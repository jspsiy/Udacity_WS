
#include <stdio.h> 
#include <stdlib.h> 
#include<Node2.h>
#include <memory>
#include<iostream>
#include <chrono>
#include <thread>
#include <cmath>
#include<iostream>
#include<future>
#include"Planner.h"
#include<Eigen/Dense>
#include <tf2_ros/transform_listener.h>
#include<tf2_geometry_msgs/tf2_geometry_msgs.h>
//#include "tf2_ros/transform_listener.h"
#include "tf2_ros/message_filter.h"
#include "message_filters/subscriber.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
#include<cmath>
#include<Mover.h>
#include <unistd.h>


Mover::Mover(){
//waitfortopic
path= ros::topic::waitForMessage<nav_msgs::Path>("path", n);std::cout<<"something was heard"<<path->poses.size()<<"\n";
usleep(30);
pathsize=path->poses.size();
tf::StampedTransform transform;
ros::Time now = ros::Time::now();
Mover::getS();
pub_vel_ = n.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
while (ros::ok())
{
//std::cout<<"entered ros::ok()\n";
computeVelocities();
//ros::Duration(0.02).sleep();
if (goal==true)
{break;}
ros::spinOnce();
//break;
}
  //sub_odom_ = nh_.subscribe("odom", 1, &PurePursuit::computeVelocities, this);
}


void Mover::computeVelocities()
{
std::cout<<"entered compute velocities\n";
Mover::checkPosition();
Mover::lookAheadPoint();
geometry_msgs::TransformStamped tf;
/*try{
        listener.waitForTransform("/map", "/base_link", ros::Time(0), ros::Duration(10.0));
        tf = tf_buffer_.lookupTransform("/map", "/base_link", ros::Time(0));
        
}catch (tf::TransformException ex) {
    ROS_ERROR("%s", ex.what());
}*/


tf::StampedTransform transform;
try{
        listener.waitForTransform("/base_link", "/map", ros::Time(0), ros::Duration(10.0));
        listener.lookupTransform("/base_link", "/map", ros::Time(0), transform);
        
}catch (tf::TransformException ex) {
    ROS_ERROR("%s", ex.what());
}

double x = transform.getOrigin().x();;
double y = transform.getOrigin().y();;
//double th = tf::getYaw(pose.getRotation());
double th = tf::getYaw(transform.getRotation());
std::cout<<"The map's position with respect to the robot frame is \n";
std::cout<<" position x: "<<x;
std::cout<<" position y:"<<y ;
std::cout<<" theta: "<<th <<"\n";
Eigen::Matrix4f m;
m << cos(th), -sin(th), 0,x,
     sin(th), cos(th), 0,y,
     0, 0, 1,0,
     0,0,0,1;
Eigen::Vector4f translookthere=m*lookthere;
std::cout<<"The lookaheadpoint with respect to the robot frame is \n";
std::cout<<" position x: "<<translookthere[0];
std::cout<<" position y:"<<translookthere[1] <<"\n";
double L_2=translookthere[0]*translookthere[0]+translookthere[1]*translookthere[1];
std::cout<<"L^2: "<<L_2<<"\n";
if (sqrt(L_2)<0.5)
{
cmd_vel_.angular.z =0;
cmd_vel_.linear.x=0;
pub_vel_.publish(cmd_vel_);

std::cout<<"simulation is done.\n";
this->goal=true;
}
else
{

cmd_vel_.linear.x=std::max(1.0,0+sqrt(2*max_accel*sqrt(L_2)));
cmd_vel_.angular.z =2*translookthere[1]*cmd_vel_.linear.x/L_2;
}
pub_vel_.publish(cmd_vel_);

//std::cout<<" theta: "<<th <<"\n";
}



/*void Mover::receivePath(nav_msgs::Path new_path)
{
    this->path = new_path;
    this->pathsize=path->poses.size();
    std::cout<<"pathsize: "<<pathsize<<"\n";
    idx_ = 0;
    if (new_path->poses.size() > 0)
    {
      goal_reached_ = false;
    }
    else
    {
      goal_reached_ = true;
      ROS_WARN_STREAM("Received empty path!");
    }
};*/


void Mover::getS(){
for(int i=0; i <this->path->poses.size()-1;i++){
Eigen::Vector3f e1;
Eigen::Vector3f e2;

e1[0]=this->path->poses[i].pose.position.x;e1[1]=this->path->poses[i].pose.position.y;e1[2]=0;
e2[0]=this->path->poses[i+1].pose.position.x;e2[1]=this->path->poses[i+1].pose.position.y;e2[2]=0;
//tf::pointMsgToEigen(robotpath[i],e1);
//tf::pointMsgToEigen(robotpath[i+1],e2);
auto s=e2-e1;
auto sol=e2.cross(s);
this->S.push_back(s);
this->SOL.push_back(sol);
std::cout<<"S :"<<S[i][0]<<" "<<S[i][1]<<" "<<S[i][2]<<"\n";
std::cout<<"SOL :"<<SOL[i][0]<<" "<<SOL[i][1]<<" "<<SOL[i][2]<<"\n";

}
};

void Mover::closestPoint(){
Eigen::Vector3f p;
int pathnumber=1;
Eigen::Vector3f position;
//tf::pointMsgToEigen(this->robot_position,position);
position[0]=this->robot_position.x;
position[1]=this->robot_position.y;
position[2]=0;
//std::cout<<"the position of the robot: "<<position[0]<<" "<<position[1]<<" "<<position[2]<<"\n";

std::vector<std::vector<float>> pointsinlinecollected;//( distance,path number,x,y,z)
std::vector<float> pointsinline;
for(int i=0; i <S.size();i++){
Eigen::Vector3f pointinline=position+(S[i].cross(SOL[i]-position.cross(S[i])))/(S[i].dot(S[i]));
//std::cout << "pointinline: " <<pointinline[0]<<" "<<pointinline[1]<<" "<<pointinline[2]<<"\n";

float distance=sqrt(pow((pointinline[0]-position[0]),2)+pow((pointinline[1]-position[1]),2)+pow((pointinline[2]-position[2]),2));
//std::cout<<"Testing"<<distance<<"\n";
pointsinline.push_back(distance);pointsinline.push_back(i+1);pointsinline.push_back(pointinline[0]);pointsinline.push_back(pointinline[1]);pointsinline.push_back(pointinline[2]);
pointsinlinecollected.push_back(pointsinline);
//std::cout<<"Testing#2 "<<distance<<" "<<i<<" "<<pointinline[0]<<"\n";
pointsinline.clear();
}

    int m = pointsinlinecollected.size();  
    int n = pointsinlinecollected[0].size(); 

    std::cout << "The Matrix before sorting 1st row is:\n"; 
    /*for (int i=0; i<m; i++) 
    { 
        for (int j=0; j<n ;j++) 
           //std::cout << pointsinlinecollected[i][j]<<" "; 
           //std::cout << "\n"; 
    } */



sort(pointsinlinecollected.begin(), pointsinlinecollected.end(),sortcol); 

    //std::cout << "The Matrix before sorting 1st row is:\n"; 
    /*for (int i=0; i<m; i++) 
    { 
        for (int j=0; j<n ;j++) 
           //std::cout << pointsinlinecollected[i][j]<<" "; 
           //std::cout << "\n"; 
    } */

p[0]=pointsinlinecollected[0][2];p[1]=pointsinlinecollected[0][3];p[2]=pointsinlinecollected[0][4];
std::cout<< "closest point is : " << p[0] <<" "<<p[1]<<" "<<p[2]<<"\n";
this->robot_closest_point.x=p[0];this->robot_closest_point.y=p[1];this->robot_closest_point.z=p[2];


};








void Mover::checkPosition(){
    tf::StampedTransform transform;
     ros::Time now = ros::Time::now();

try{
        listener.waitForTransform("/map", "/base_link", ros::Time(0), ros::Duration(10.0));
        listener.lookupTransform("/map", "/base_link", ros::Time(0), transform);
        
}catch (tf::TransformException ex) {
    ROS_ERROR("%s", ex.what());
}
      robot_position.x=transform.getOrigin().x();
      robot_position.y=transform.getOrigin().y();
      robot_position.z=transform.getOrigin().z();
      tf::Quaternion q = transform.getRotation(); 
      this->robot_orientation= tf::getYaw(q);
std::cout<<"robot's position with respect to the map \n";
std::cout<<"x: "<<robot_position.x<<" y: "<<robot_position.y<<" z: "<<robot_position.z<<" robot_orientation: "<<robot_orientation<<"\n";

};



void Mover::lookAheadPoint(){

Eigen::Vector3f p;
std::vector<Eigen::Vector3f> e2coll;
std::vector<Eigen::Vector3f> e1coll;

std::vector<std::vector<float>> pointsinlinecollected;
std::vector<float> pointinline;
	for(int i=0; i <path->poses.size()-1;i++){
	Eigen::Vector3f e2;
        Eigen::Vector3f e1;
	e2[0]=this->path->poses[i+1].pose.position.x;e2[1]=this->path->poses[i+1].pose.position.y;e2[2]=this->path->poses[i+1].pose.position.z;
	e1[0]=this->path->poses[i].pose.position.x;e1[1]=this->path->poses[i].pose.position.y;e1[2]=this->path->poses[i].pose.position.z;
	e2coll.push_back(e2);
        e1coll.push_back(e1);
	}	

distfinal=sqrt(pow((path->poses[pathsize-1].pose.position.x-robot_position.x),2)+pow((path->poses[pathsize-1].pose.position.y-robot_position.y),2));
std::cout<<distfinal<<"\n";
if (distfinal<lookaheadradius)
{
std::cout<<"Yes, the robot's distance to the final node is less"<<"\n";
lookaheadpoint[0]=path->poses[pathsize-1].pose.position.x;
lookaheadpoint[1]=path->poses[pathsize-1].pose.position.y;
lookaheadpoint[2]=path->poses[pathsize-1].pose.position.z;
this->lookaheadprev=this->lookaheadpoint;
}
else{
std::cout<<"No, the robot's distance to the final node is more"<<"\n";
int pathnumber=1;
Eigen::Vector3f position;
position[0]=this->robot_position.x;
position[1]=this->robot_position.y;
position[2]=0;
float a;
float b;
float c;
float discriminant;

Eigen::Vector3f f,point;
Eigen::Vector3f rpos; rpos[0]=robot_position.x;rpos[1]=robot_position.y;rpos[2]=robot_position.z;
//Eigen::Vector3f rpos; rpos[0]=robot_closest_point.x;rpos[1]=robot_closest_point.y;rpos[2]=robot_closest_point.z;
for(int i=0; i <S.size();i++){

f=e1coll[i]-rpos;  ////REMEMBER THIS. rpos-e2coll[i]
;
a=S[i].dot(S[i]);

b=2*(f.dot(S[i]));

c=f.dot(f)-lookaheadradius*lookaheadradius;

discriminant=b*b-4*a*c;

if (discriminant < 0) {//p=this->lookaheadprev;
}
else{
discriminant = sqrt(discriminant);
float t1 = (-b - discriminant)/(2*a);

float t2 = (-b + discriminant)/(2*a);

if (t1 >= 0 &&t1 <=1){
	
	point = e1coll[i] + (t1) * S[i];
	pointinline.push_back(i+1);pointinline.push_back(point[0]);pointinline.push_back(point[1]);pointinline.push_back(point[2]);
	pointsinlinecollected.push_back(pointinline);
	pointinline.clear();
		}
if (t2 >= 0 && t2 <=1){
	
	point = e1coll[i] + (t2) * S[i];
	pointinline.push_back(i+1);pointinline.push_back(point[0]);pointinline.push_back(point[1]);pointinline.push_back(point[2]);
	pointsinlinecollected.push_back(pointinline);
	pointinline.clear();
		}
}
pathnumber++;
}


if (pointsinlinecollected.size()!=0)
{
sort(pointsinlinecollected.begin(), pointsinlinecollected.end(),sortcol2); 


std::vector<std::vector<float>> pointsinlinecollectedfiltered;
float latestpath=pointsinlinecollected[0][0];//select the latest pathway;

for(std::vector<float> v:pointsinlinecollected) //filterout path only taking the points on the latest path number
{
if (v[0]==latestpath)
pointsinlinecollectedfiltered.push_back(v);
}
//check distance
std::vector<std::vector<float>> pointsinlinebasedondistance;
for(std::vector<float> v:pointsinlinecollectedfiltered) //filterout path only taking the points on the latest path number
{

v[0]=pow((e2coll[latestpath-1][0]-v[1]),2)+pow((e2coll[latestpath-1][1]-v[2]),2)+pow((e2coll[latestpath-1][2]-v[3]),2);

pointsinlinebasedondistance.push_back(v);
}

 
sort(pointsinlinebasedondistance.begin(), pointsinlinebasedondistance.end(),sortcol);


this->lookaheadpoint[0]=pointsinlinebasedondistance[0][1];
this->lookaheadpoint[1]=pointsinlinebasedondistance[0][2];
this->lookaheadpoint[2]=pointsinlinebasedondistance[0][3];
}
//this->lookaheadpoint[3]=1;
std::cout<<"lookaheadx: "<<this->lookaheadpoint[0]<<" lookaheady:"<<this->lookaheadpoint[1]<<" lookaheadz: "<<this->lookaheadpoint[2]<<"\n";
this->lookaheadprev=this->lookaheadpoint;
/*lookthere.header.stamp=ros::Time::Now();
lookthere.header.frame_id="/map";
lookthere.pose.position.x=lookaheadpoint[0];
lookthere.pose.position.y=lookaheadpoint[1];
lookthere.pose.position.z=lookaheadpoint[2];*/
lookthere[0]=lookaheadpoint[0];
lookthere[1]=lookaheadpoint[1];
lookthere[2]=lookaheadpoint[2];
lookthere[3]=1;
}

};

void Mover::getCurvatureAndUpdate(){};



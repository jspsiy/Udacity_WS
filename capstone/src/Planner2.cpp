
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
#include<Planner.h>
#include<Eigen/Dense>
#include<nav_msgs/Path.h>
#include <tf2/LinearMath/Quaternion.h>
#include <math.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#define PI 3.14159265


Planner::Planner(double x,double y,double theta):head(nullptr),tail(nullptr){
std::cout<<"planner was called \n";

std::cout<<"Planner is waiting for topic.\n";
nodes= ros::topic::waitForMessage<capstone::Nodes>("nodevector", n);std::cout<<"something was heard"<<nodes->points.size()<<"\n";

//readjust path to follow node.
geometry_msgs::Point pointtopush;
this->robot_position.x=x;this->robot_position.y=y;this->robot_position.z=0;
this->init_robot_position.x=x;this->init_robot_position.y=y;this->init_robot_position.z=0;
lookaheadprev[0]=robot_position.x; lookaheadprev[1]=robot_position.y; lookaheadprev[2]=robot_position.z;
pointtopush=this->robot_position;
if (robot_position.x!=nodes->points[0].x && robot_position.y!=nodes->points[0].y)
{robotpath.push_back(pointtopush);}
for (int i=0; i<nodes->points.size();i++)
{
this->push(nodes->points[i].x,nodes->points[i].y);
pointtopush.x=nodes->points[i].x;pointtopush.y=nodes->points[i].y;pointtopush.z=0;
robotpath.push_back(pointtopush);

}

this->robottheta=theta;
};

void Planner::printListAdjust(){
std::cout<<"Printing the robot path: \n";
for (geometry_msgs::Point pt  :  this->robotpath)
{
std::cout<<pt.x <<" : " <<pt.y<<"\n";
}
};



void Planner::getS(){
for(int i=0; i <robotpath.size()-1;i++){
Eigen::Vector3f e1;
Eigen::Vector3f e2;

e1[0]=this->robotpath[i].x;e1[1]=this->robotpath[i].y;e1[2]=0;
e2[0]=this->robotpath[i+1].x;e2[1]=this->robotpath[i+1].y;e2[2]=0;
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


Eigen::Vector3f Planner::closestPoint(){
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
    for (int i=0; i<m; i++) 
    { 
        for (int j=0; j<n ;j++) 
           std::cout << pointsinlinecollected[i][j]<<" "; 
           std::cout << "\n"; 
    } 



sort(pointsinlinecollected.begin(), pointsinlinecollected.end(),sortcol); 

    std::cout << "The Matrix before sorting 1st row is:\n"; 
    for (int i=0; i<m; i++) 
    { 
        for (int j=0; j<n ;j++) 
           std::cout << pointsinlinecollected[i][j]<<" "; 
           std::cout << "\n"; 
    } 




p[0]=pointsinlinecollected[0][2];p[1]=pointsinlinecollected[0][3];p[2]=pointsinlinecollected[0][4];
std::cout<< "closest point is : " << p[0] <<" "<<p[1]<<" "<<p[2]<<"\n";
this->robot_closest_point.x=p[0];this->robot_closest_point.y=p[1];this->robot_closest_point.z=p[2];

return p;

};


void Planner::lookAheadPoint(){
std::cout<<"looking for look ahead point.\n";
Eigen::Vector3f p;
std::vector<Eigen::Vector3f> e2coll;
std::vector<Eigen::Vector3f> e1coll;

std::vector<std::vector<float>> pointsinlinecollected;
std::vector<float> pointinline;
	for(int i=0; i <robotpath.size()-1;i++){
	Eigen::Vector3f e2;
        Eigen::Vector3f e1;
	e2[0]=this->robotpath[i+1].x;e2[1]=this->robotpath[i+1].y;e2[2]=robotpath[i+1].z;
	e1[0]=this->robotpath[i].x;e1[1]=this->robotpath[i].y;e1[2]=robotpath[i].z;
	e2coll.push_back(e2);
        e1coll.push_back(e1);
	}	
double distfinal;//distance of the robot to the final node;
distfinal=sqrt(pow((robotpath[robotpath.size()-1].x-robot_position.x),2)+pow((robotpath[robotpath.size()-1].y-robot_position.y),2));
if (distfinal<lookaheadradius)
{
std::cout<<"Yes, the robot's distance to the final node is less"<<"\n";
lookaheadpoint[0]=robotpath[robotpath.size()-1].x;
lookaheadpoint[1]=robotpath[robotpath.size()-1].y;
lookaheadpoint[2]=robotpath[robotpath.size()-1].z;
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
//Eigen::Vector3f rpos; rpos[0]=robot_position.x;rpos[1]=robot_position.y;rpos[2]=robot_position.z;
Eigen::Vector3f rpos; rpos[0]=robot_closest_point.x;rpos[1]=robot_closest_point.y;rpos[2]=robot_closest_point.z;
for(int i=0; i <S.size();i++){
std::cout<<"path number: "<<pathnumber<<"\n";
f=e1coll[i]-rpos;  ////REMEMBER THIS. rpos-e2coll[i]
std::cout<<"f: "<<f<<"\n";
a=S[i].dot(S[i]);
std::cout<<"a: "<<a<<"\n";
b=2*(f.dot(S[i]));
std::cout<<"b: "<<b<<"\n";
c=f.dot(f)-lookaheadradius*lookaheadradius;
std::cout<<"c: "<<c<<"\n";
discriminant=b*b-4*a*c;
std::cout<<"disc: "<<discriminant<<"\n";
//std::cout<<(discriminant <0)<<"\n";

if (discriminant < 0) {//p=this->lookaheadprev;
}
else{
discriminant = sqrt(discriminant);
float t1 = (-b - discriminant)/(2*a);
std::cout<<"t1:"<< t1<<"\n";
float t2 = (-b + discriminant)/(2*a);
std::cout<<"t2:"<< t2<<"\n";
if (t1 >= 0 &&t1 <=1){
	//std::cout<<"t1 detected \n";
	point = e1coll[i] + (t1) * S[i];
	pointinline.push_back(i+1);pointinline.push_back(point[0]);pointinline.push_back(point[1]);pointinline.push_back(point[2]);
	pointsinlinecollected.push_back(pointinline);
	pointinline.clear();
		}
if (t2 >= 0 && t2 <=1){
	//std::cout<<"t2 detected \n";
	point = e1coll[i] + (t2) * S[i];
	pointinline.push_back(i+1);pointinline.push_back(point[0]);pointinline.push_back(point[1]);pointinline.push_back(point[2]);
	pointsinlinecollected.push_back(pointinline);
	pointinline.clear();
		}
}
pathnumber++;
}
std::cout<<"possible look ahead points.\n";

if (pointsinlinecollected.size()!=0)
{
sort(pointsinlinecollected.begin(), pointsinlinecollected.end(),sortcol2); 


std::vector<std::vector<float>> pointsinlinecollectedfiltered;
float latestpath=pointsinlinecollected[0][0];//select the latest pathway;
std::cout<<latestpath<<"\n";
for(std::vector<float> v:pointsinlinecollected) //filterout path only taking the points on the latest path number
{
if (v[0]==latestpath)
pointsinlinecollectedfiltered.push_back(v);
}
//check distance
std::vector<std::vector<float>> pointsinlinebasedondistance;
for(std::vector<float> v:pointsinlinecollectedfiltered) //filterout path only taking the points on the latest path number
{
//std::cout<<"e2x:"<<e2coll[latestpath-1][0]<<" e2y:"<<e2coll[latestpath-1][1]<<" e2z:"<<e2coll[latestpath-1][2]<<"\n";
//std::cout<<"vx:"<<v[1]<<" vy:"<<v[2]<<" vz:"<<v[3]<<"\n";
v[0]=pow((e2coll[latestpath-1][0]-v[1]),2)+pow((e2coll[latestpath-1][1]-v[2]),2)+pow((e2coll[latestpath-1][2]-v[3]),2);

pointsinlinebasedondistance.push_back(v);
}

 
std::cout<<"Possible points on the latest path:"<<pointsinlinebasedondistance.size()<<"\n";

int m = pointsinlinebasedondistance.size(); 
std::cout<<pointsinlinebasedondistance.size()<<"\n";

int n = pointsinlinebasedondistance[0].size(); 

    for (int i=0; i<m; i++) 
    { 
        for (int j=0; j<n ;j++) 
           std::cout << pointsinlinebasedondistance[i][j]<<" "; 
           std::cout << "\n"; 
    } 

sort(pointsinlinebasedondistance.begin(), pointsinlinebasedondistance.end(),sortcol);
std::cout<<"After sorting\n";
    for (int i=0; i<m; i++) 
    { 
        for (int j=0; j<n ;j++) 
           std::cout << pointsinlinebasedondistance[i][j]<<" "; 
           std::cout << "\n"; 
    } 


this->lookaheadpoint[0]=pointsinlinebasedondistance[0][1];
this->lookaheadpoint[1]=pointsinlinebasedondistance[0][2];
this->lookaheadpoint[2]=pointsinlinebasedondistance[0][3];
}
//this->lookaheadpoint[3]=1;
std::cout<<"lookaheadx: "<<this->lookaheadpoint[0]<<" lookaheady:"<<this->lookaheadpoint[1]<<" lookaheadz: "<<this->lookaheadpoint[2]<<"\n";
this->lookaheadprev=this->lookaheadpoint;
}
};



void Planner::getCurvatureAndUpdate(){//this needs to be changed, do it tomorrow
double speed=2.5;
float offsetX = this->lookaheadpoint[0]-robot_position.x;
float offsetY = this->lookaheadpoint[1]-robot_position.y;
float distanceToPoint = (float)sqrt(offsetX * offsetX + offsetY * offsetY);
float normalizedX = offsetX / distanceToPoint;
float normalizedY = offsetY / distanceToPoint;
this->robot_position.x += normalizedX * speed*this->dt;
this->robot_position.y += normalizedY * speed*this->dt;
this->traversed.push_back({robot_position.x,robot_position.y});
//Eigen::Vector4f changeindistance{velocity*cos(robottheta)*0.1,velocity*sin(robottheta)*0.1,0,1};//with respect to vehicle frame;

};

void Planner::printTraversed(){
for(std::vector<double> trav:traversed)
{

std::cout<<"Printing traversed locations:"<<"\n";
std::cout<<"x: "<<trav[0]<<" y: "<<trav[1]<<"\n";

}
};

void Planner::printLookAhead(){
for(Eigen::Vector3f look:lookaheadpointscollected)
{
std::cout<<"Printing lookahead points collected:"<<"\n";
std::cout<<"x: "<<look[0]<<" y: "<<look[1]<<" z: "<<look[2]<<"\n";
}
};

bool sortcol2( const std::vector<float>& v1, 
               const std::vector<float>& v2 ) { 
 return v1[0] > v2[0]; 
} 

bool sortcol( const std::vector<float>& v1, 
               const std::vector<float>& v2 ) { 
 return v1[0] < v2[0]; 
} 


//Planner::LookForClosestPoint(){//

/*
void Planner::push( int x2,int y2) { 
      Node *temp=new Node;
      temp->x=x2;
      temp->y=y2;
      temp->next=NULL;
      if(head==NULL)
      {
        head=temp;
        tail=temp;
        temp=NULL;
      }
      else
      {	
        tail->next=temp;
        tail=temp;
      }
     this->size++;
     this->xvec.push_back(x2);
     this->yvec.push_back(y2);
     //delete temp;

} */


void Planner::Plot()//polymorphism
{
ros::Publisher marker_pub = n.advertise<visualization_msgs::MarkerArray>("markarray2", 1,true);
ros::Publisher path_ = n.advertise<nav_msgs::Path>("path", 1,true);

visualization_msgs::MarkerArray marker_array;
capstone::Nodes nodes;
std::cout<<"size of array published at start:"<<sizeof(marker_array.markers)<<"\n";
std::string marker= "planner marker";
for(int i=0; i<this->traversed.size();i++)
{
std::string markerup=marker+std::to_string(i);
//std::thread t1(&Path::sendtoRviz,this,this->xvec[i],this->yvec[i],markerup,i);//, this->xvec[i],this->yvec[i],this->pubvec[i]);
std::future<visualization_msgs::Marker> fut = std::async (&Planner::sendtoRviz,this,this->traversed[i][0],this->traversed[i][1],markerup,i);
visualization_msgs::Marker mark=fut.get();

marker_array.markers.push_back(mark);
//std::cout<<markerup<<"  planner marker is deployed"<<"\n";

}

std::cout<<"number of nodes :"<<this->traversed.size()<<"\n";
//broadcast robot position.
static tf2_ros::StaticTransformBroadcaster static_broadcaster;
geometry_msgs::TransformStamped static_transformStamped;
static_transformStamped.header.stamp = ros::Time::now();
static_transformStamped.header.frame_id = "map";
static_transformStamped.child_frame_id = "odom";
  static_transformStamped.transform.translation.x = init_robot_position.x;
  static_transformStamped.transform.translation.y =init_robot_position.y;
  static_transformStamped.transform.translation.z = init_robot_position.z;
tf2::Quaternion myQuaternion;
geometry_msgs::Quaternion quat_msgx;

myQuaternion.setRPY( 0.0, 0.0, this->robottheta );
myQuaternion.normalize();
tf2::convert(myQuaternion, quat_msgx);
//tf2::fromMsg(quat_msgx,myQuaternion);

 // tf2::Quaternion quat;

  static_transformStamped.transform.rotation.x = quat_msgx.x;
  static_transformStamped.transform.rotation.y =quat_msgx.y;
  static_transformStamped.transform.rotation.z = quat_msgx.z;
  static_transformStamped.transform.rotation.w = quat_msgx.w;
 

//broadcast path
nav_msgs::Path pathneedbefollowed;
pathneedbefollowed.header.frame_id ="map";
geometry_msgs::PoseStamped posest;
tf2::Quaternion quat;
geometry_msgs::Quaternion quat_msg;
int count=0;
for (int i=0; i<robotpath.size()-1;i++)
{

posest.pose.position.x=robotpath[i].x;
posest.pose.position.y=robotpath[i].y;
posest.pose.position.z=robotpath[i].z;
float dx=robotpath[i+1].x-robotpath[i].x;
float dy=robotpath[i+1].y-robotpath[i].y;
float dist=sqrt(pow(dx,2)+pow(dy,2));
if (dx=0)
{dx=0.001;}
float angle=atan2(dy,dx);
/*
if ((dx>0 && dy>0)||(dx>0 && dy<0))
{
//do nothing
}
else if (dx<0 && dy>0)
{
angle = pi+angle
}
else if (dx<0 && dy<0)
{
angle = pi+angle
}
*/

quat.setRPY(0.0,0.0, angle);
tf2::convert(quat_msg , quat);
posest.pose.orientation.x=quat_msg.x;
posest.pose.orientation.y=quat_msg.y;
posest.pose.orientation.z=quat_msg.z;
posest.pose.orientation.w=quat_msg.w;
pathneedbefollowed.poses.push_back(posest);
count++;
}

posest.pose.position.x=robotpath[robotpath.size()-1].x;
posest.pose.position.y=robotpath[robotpath.size()-1].y;
posest.pose.position.z=robotpath[robotpath.size()-1].z;
float dx=robotpath[robotpath.size()-1].x-robotpath[robotpath.size()-2].x;
float dy=robotpath[robotpath.size()-1].y-robotpath[robotpath.size()-2].y;
float angle=atan2(dy,dx);
quat.setRPY(0.0,0.0, angle);
posest.pose.orientation.x=quat_msg.x;
posest.pose.orientation.y=quat_msg.y;
posest.pose.orientation.z=quat_msg.z;
posest.pose.orientation.w=quat_msg.w;
pathneedbefollowed.poses.push_back(posest);
//boost::thread thread_b(transformpublisher, &rate_b);
//std::thread t(PublishMarker,marker_pub,marker_array);
//publishpathandmarker(path_,marker_pub,pathneedbefollowed, marker_array);
//publishpath();
//publishtransform;
//std::thread t1([&marker_pub,&marker_array](){while(ros::ok()){marker_pub.publish(marker_array);ros::Duration(0.5).sleep();ros::spinOnce();}
 //std::thread t2([path_,pathneedbefollowed](){while(ros::ok()){path_pub.publish(pathneedbefollowed);ros::Duration(0.5).sleep();ros::spinOnce();}
 //std::thread t3([static_broadcaster,static_transformStamped](){while(ros::ok()){static_broadcaster.sendTransform(static_transformStamped);ros::spinOnce();}
//t1.detach;
//t2.detach;
//t3.detach;
marker_pub.publish(marker_array);
path_.publish(pathneedbefollowed);
std::cout<<this->robottheta<<" : this should be the robot's orientation with respect to the map \n";
while(ros::ok()){

static_broadcaster.sendTransform(static_transformStamped);
//ros::Duration(0.5).sleep();
ros::spinOnce();
}
//    });
//t.detach();


} 
/*
void publishpathandmarker(ros::Publisher pubpath,ros::Publisher pubmark,nav_msgs::Path path,visualization_msgs::MarkerArray markarray)
{
while(ros::ok())
{
pubpath.publish(path);
pubmark.publish(markarray);
ros::Duration(0.5).sleep();
ros::spinOnce();
}
}*/




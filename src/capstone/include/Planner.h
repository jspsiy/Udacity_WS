///Node.h

#ifndef PLANNER
#define PLANNER  


#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>
#include<thread>
#include<Node2.h>
#include <boost/config.hpp>
//#include<boost>
#include <std_msgs/Float64MultiArray.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/Transform.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Wrench.h>
#include <Eigen/Core>
#include <Eigen/Geometry>
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
#include<ros/ros.h>
#include<capstone/Nodes.h>
#include<vector>
#include<nav_msgs/Path.h>
//#include<tf>
#include <eigen_conversions/eigen_msg.h>
#include<Eigen/Dense>
#include <tf2_ros/static_transform_broadcaster.h>


bool sortcol( const std::vector<float>& v1, const std::vector<float>& v2 );
bool sortcol2( const std::vector<float>& v1, const std::vector<float>& v2 );

class Planner:public Path{ 
public:
Planner();
Planner(double x, double y,double theta);
//Planner(int x);



//copy
Planner(const Planner& other){
//nodes=other.nodes.get();
//nodes.reset();
nodes = boost::make_shared<capstone::Nodes>(*(other.nodes));
}


//xvec=other.xvec;yvec=other.yvec;tvec=other.tvec;pubvec=other.pubvec; }

//move
Planner(Planner&& other)  
   {nodes = boost::make_shared<capstone::Nodes>(*(other.nodes));other.nodes.reset();}//xvec=other.xvec;yvec=other.yvec;tvec=other.tvec;pubvec=other.pubvec;}

//copy operator constructor
Planner& operator=(const Planner& other)     
{               
return *this = Planner(other); 
   }



//move operator constructor
Planner& operator=(Planner&& other)     { 
 std::swap(nodes, other.nodes);
        return *this;
  }



//void Adjust();


~Planner(){ std::cout<<"Planner was destroyed"<<"\n"; };

//{
//p=std::make_unique<Path>(path)
//}

void printListAdjust();
void getS();
Eigen::Vector3f closestPoint();
void lookAheadPoint();
void getCurvatureAndUpdate(); //Your progress as of may 15 2020

void Update(Eigen::Matrix4f m,double velocity,double curvature,double thetaerror);

void printTraversed();
void printLookAhead();
void printMarker();
void Plot();//polymorphism


    std::vector<geometry_msgs::Point> robotpath;
  geometry_msgs::Point robot_position;
geometry_msgs::Point init_robot_position;
private: 

boost::shared_ptr<capstone::Nodes const>  nodes;
unsigned int size;

 ros::NodeHandle n;
  
    Node* head;
    Node* tail;

  // uint32_t shape = visualization_msgs::Marker::CUBE;
    std::vector<double> xvec;
    std::vector<double> yvec;
    //std::vector<std::thread> tvec;
    //std::vector<ros::Publisher> pubvec;
    /*double robotx;
    double roboty;
    double robottheta;*/

  
    geometry_msgs::Point robot_closest_point;
    double robottheta;
    const double lookaheadradius=1;
    //double robottheta;
std::vector<Eigen::Vector3f> S;
std::vector<Eigen::Vector3f> SOL;
Eigen::Vector3f lookaheadprev;
Eigen::Vector3f lookaheadpoint;
double acceleration=0.1;
std::vector<std::vector<double>> traversed;
std::vector<Eigen::Vector3f> lookaheadpointscollected;
double dt=0.01;


//Eigen::MatrixXf m(4,1);
//Eigen::MatrixXf m2(4,1);
}; 

//void publishpathandmarker(ros::Publisher pubpath,ros::Publisher pubmark,nav_msgs::Path path,visualization_msgs::MarkerArray markarray)








#endif 

///Node.h

#ifndef MOVER
#define MOVER  


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
#include<ros/ros.h>
#include<capstone/Nodes.h>
#include<vector>
#include <math.h>
//#include<tf>
#include <eigen_conversions/eigen_msg.h>
#include<Eigen/Dense>
#include <tf2_ros/static_transform_broadcaster.h>
 #include <tf2_ros/transform_listener.h>
#include<Planner.h>
#include<nav_msgs/Path.h>
#include<capstone/Nodes.h>
#include<tf2_geometry_msgs/tf2_geometry_msgs.h>
#include "tf2_ros/transform_listener.h"
#include "tf2_ros/message_filter.h"
#include "message_filters/subscriber.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"
#include <tf/transform_listener.h>
#include<nav_msgs/Odometry.h>

bool sortcol( const std::vector<float>& v1, const std::vector<float>& v2 );
bool sortcol2( const std::vector<float>& v1, const std::vector<float>& v2 );

class Mover
{ 
public:
Mover();

Mover(const Mover& other);


//xvec=other.xvec;yvec=other.yvec;tvec=other.tvec;pubvec=other.pubvec; }

//move
Mover(Mover&& other);//xvec=other.xvec;yvec=other.yvec;tvec=other.tvec;pubvec=other.pubvec;}

//copy operator constructor
Mover& operator=(const Planner& other);



//move operator constructor
Mover& operator=(Mover&& other);




~Mover(){ 
cmd_vel_.linear.x=0;
cmd_vel_.angular.z=0;
pub_vel_.publish(cmd_vel_);
std::cout<<"Mover was destroyed"<<"\n"; };
void receivePath(nav_msgs::Path new_path);
//void receivePath(nav_msgs::Path new_path);
void getCurvatureAndUpdate();
void lookAheadPoint();
void getS();
void checkPosition();
void closestPoint();
void computeVelocities();
geometry_msgs::Point robot_position;
double distfinal=9000;
private: 
ros::NodeHandle n;
ros::Publisher pub_vel_=n.advertise<geometry_msgs::Twist>("cmd_vel", 1);
ros::Subscriber sub_odom_, path_sub;

capstone::Nodes nodes;
boost::shared_ptr<nav_msgs::Path const> path;
//double w_max=1.0;
bool goal_reached_;
geometry_msgs::Twist cmd_vel_;
unsigned idx_;
geometry_msgs::Point robot_closest_point;
double lookaheadradius=1.5;
std::vector<Eigen::Vector3f> S;
std::vector<Eigen::Vector3f> SOL;
Eigen::Vector3f lookaheadprev;
Eigen::Vector3f lookaheadpoint;
//Eigen::Vector3f robot_position;
double robot_orientation;
tf::TransformListener listener;
tf::StampedTransform transform;
tf2_ros::Buffer tf_buffer_;
//tf2_ros::TransformListener tf_listener_;
//tf2_ros::TransformListener tf2_;
int pathsize=0;
double w_max=1.57;
double max_accel=5;
std::vector<Eigen::Vector3f> lookaheadpointscollected;
bool goal=false;
//geometry_msgs::PoseStamped lookthere;
Eigen::Vector4f lookthere;//lookaheadpoint with respect to map
}; 










#endif 

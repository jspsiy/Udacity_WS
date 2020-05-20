
#include <stdio.h> 
#include <stdlib.h> 
//#include<Node2.h>
#include <memory>
#include<iostream>
#include <chrono>
#include <thread>
#include <cmath>
#include<iostream>
#include<future>
#include"Planner.h"
#include<ros/ros.h>
/*void chatterCallback(const visualization_msgs::MarkerArray::ConstPtr& msg)
{
  std::cout<<"something was heard"<<msg->markers.size()<<"\n"; 
}*/

/*
void chatterCallback(const visualization_msgs::MarkerArray::ConstPtr& msg)
{
   std::cout << "I received: " << msg->p.x << std::endl;
   
}*/

int main(int argc, char **argv)
{
ros::init(argc, argv, "capstoneplanner");
//std::cout<<"HI"<<"\n";
// ros::NodeHandle n;

double x,y,theta;
std::cout<<"Please enter your starting point"<<"\n";
std::cout<<"x value:"<<"\n";
std::cin>>x;
if (!std::cin)
{std::cout<<"Input failed."<<"\n";
return 0;}
std::cout<<"y value:"<<"\n";
std::cin>>y;
if (!std::cin)
{std::cout<<"Input failed."<<"\n";
return 0;}
std::cout<<"theta value(robot's initial orientation:"<<"\n";
std::cin>>theta;
if (!std::cin)
{std::cout<<"Input failed."<<"\n";
return 0;}

//std::shared_ptr<Planner> plan=std::make_shared<Planner>(x,y,theta);
//plan->printList();
//plan->printListAdjust();
Planner plan(x,y,theta);

plan.printList();

plan.printListAdjust();
std::cout<<"Begin planning \n";
plan.getS();

//for (int i=0;i<100;i++){
double distcheck=sqrt(pow(plan.robot_position.x- plan.robotpath[plan.robotpath.size()-1].x,2)+pow(plan.robot_position.y- plan.robotpath[plan.robotpath.size()-1].y,2));
//std::cout<<plan.robotpath[plan.robotpath.size()-1].y<<"\n";
while (distcheck>0.5){
distcheck=sqrt(pow(plan.robot_position.x- plan.robotpath[plan.robotpath.size()-1].x,2)+pow(plan.robot_position.y- plan.robotpath[plan.robotpath.size()-1].y,2));
plan.closestPoint();
plan.lookAheadPoint();
plan.getCurvatureAndUpdate();
}

plan.printTraversed();
plan.printLookAhead();
plan.Plot();
//boost::shared_ptr<visualization_msgs::MarkerArray const>  markarray;
//markarray = ros::topic::waitForMessage<visualization_msgs::MarkerArray>("markarray", n);
//std::cout<<"something was heard"<<markarray->markers.size()<<"\n"; 
  //ros::Subscriber sub = n.subscribe("/markarray", 1000, chatterCallback);
//Planner p();

//ros::spin();

stop:
  return 0;
}




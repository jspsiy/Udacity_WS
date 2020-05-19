
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
//#include"Planner.h"
#include<ros/ros.h>
#include"Mover.h"
#include<Planner.h>


int main(int argc, char **argv)
{

ros::init(argc, argv, "capstonemover");

Mover move;

//move.checkPosition();


//while(move.distfinal>0.5)
//{
//move.closestPoint();
//move.lookAheadPoint();
//move.getCurvatureAndUpdate();
//ros::Duration(0.5).sleep();
//ros::spinOnce();
//}
  return 0;
}




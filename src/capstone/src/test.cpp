#include<ros/ros.h>
#include<iostream>
#include <memory>
#include<vector>
int main(int argc, char **argv) 
{ 
ros::init( argc ,argv,"trial") ;
ros::NodeHandle n;
std::vector<double> g;
n.getParam("/pathx", g  ) ;

std::cout<<g.size()<<" "<< g[0]<<" "<<g[1]<<" "<<g[2]<<"\n";
} 

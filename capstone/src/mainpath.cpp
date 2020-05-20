#include"Node2.h"
#include"Planner.h"
#include<iostream>
#include <memory>
#include<vector>
#include<thread>
#include<chrono>
#include <fstream>
#include <string>
int main (int argc, char **argv)
{
    ros::init(argc, argv, "capstone");
    ros::NodeHandle n;
   std::vector<double> x;

    std::shared_ptr<Path> p=std::make_shared<Path>();
    p->getPath();
/*
n.getParam("/pathx", x ) ;
std::vector<double> y;
n.getParam("/pathy", y ) ;



for(int i=0; i<x.size();i++)
{
std::cout<<"x: " <<x[i]<<"y: " <<y[i]<<"\n";
p->push(x[i],y[i]);
}
*/
std::string input;
    std::ifstream file;
file.open("/src/capstone/src/path.txt",std::ifstream::in );
if (file.is_open())
{
std::cout<<"File is open.\n";
}
else
{std::cout<<"File is not open.\n";}
    while(getline(file,input))
{

std::stringstream ss;
ss<<input;
std::string a;
std::string b;
ss >> a >> b;
p->push(stof(a),stof(b));
std::cout<<stof(a)<<" : " << stof(b);
}
    
file.close();
    //NumberCounter nc = NumberCounter(&nh);
   // Path *p = new(Path);
  
p->push(-5 ,-5);
p->push(-7.5 ,0);
p->push(-5  , 5);
p->push( 5 , 5);
p->push(7.5, 0);
p->push( 5 ,-5);

    std::cout<<"Created Linked List: "<<"\n"; 
    p->printList(); 

    //p->deleteNode(4); 
    //puts("\nLinked List after Deletion at position 4: "); 
    p->Plot();
   ros::spin();
    return 0;
} 

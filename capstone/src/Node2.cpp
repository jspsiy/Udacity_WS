
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
#include<vector>
#include<capstone/Nodes.h>
#include<nav_msgs/Path.h>


Path::Path(){
head=NULL;
tail=NULL;
size=0;
}
Path::~Path(){
delete this->head;delete this->tail;this->head=nullptr;this->tail=nullptr;
std::cout<<"Path is dead"<<"\n";
}


void Path::getPath(){ //this doesn't work for some odd reasons.
/*std::cout<<"i have been here."<<"\n";
std::vector<double> x;
n.getParam("pathx",x);
std::vector<double> y;
n.getParam("pathy",y);
for(int i=0; i<x.size();i++)
{
std::cout<<"x: " <<x[i]<<"y: " <<y[i]<<"\n";

}*/
}
void Path::push( float x2,float y2) { 
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

} 

  void Path::deleteNode(int pos)
  {
    Node *current=new Node;
    Node *previous=new Node;
    current=head;
    for(int i=1;i<pos;i++)
    {
      previous=current;
      current=current->next;
    }
    previous->next=current->next;
    delete current; delete previous;
  }
void Path::printList() { 
       Node *temp=new Node;
    temp=head;
    while(temp!=NULL)
    {
      std::cout<<"x:"<<temp->x<<" : y:"<<temp->y<<"\n";
      temp=temp->next;
    }
      std::cout<<"number of nodes :"<<this->size<<"\n"<<"number of paths :"<<this->size-1<<"\n";
    delete temp;
    std::cout<<"temp is destroyed"<<"\n";
}

void Path::Plot(){
ros::Publisher marker_pub = n.advertise<visualization_msgs::MarkerArray>("markarray", 1);
ros::Publisher nodevec= n.advertise<capstone::Nodes>("nodevector", 1);
//std::vector<std::vector<double> collection;
//std::vector<double> Node;
visualization_msgs::MarkerArray marker_array;
capstone::Nodes nodes;
std::cout<<"size of array published at start:"<<sizeof(marker_array.markers)<<"\n";
std::string marker= "marker";
for(int i=0; i<this->size;i++)
{
std::string markerup=marker+std::to_string(i);
//std::thread t1(&Path::sendtoRviz,this,this->xvec[i],this->yvec[i],markerup,i);//, this->xvec[i],this->yvec[i],this->pubvec[i]);
std::future<visualization_msgs::Marker> fut = std::async (&Path::sendtoRviz,this,this->xvec[i],this->yvec[i],markerup,i);
std::future<geometry_msgs::Point> futpt = std::async (&Path::sendtoPlanner,this,this->xvec[i],this->yvec[i]);
//t1.detach();
visualization_msgs::Marker mark=fut.get();
geometry_msgs::Point point=futpt.get();
marker_array.markers.push_back(mark);
std::cout<<markerup<<"is deployed"<<"\n";
nodes.points.push_back(point);
}
std::cout<<"number of nodes :"<<this->size<<"\n"<<"number of paths :"<<this->size-1<<"size of array published:"<<sizeof(marker_array.markers)<<"\n";
Node *temp=new Node;
temp=head;
int i=0;
while(temp->next!=NULL)
{
std::string markerup="line"+std::to_string(i);
std::future<visualization_msgs::Marker> fut2 = std::async (&Path::sendtoRvizLine,this,*temp,*temp->next,markerup,i); //Path::sendtoRvizLine(Node n1, Node n2,std::string name, int id)
visualization_msgs::Marker mark=fut2.get();
marker_array.markers.push_back(mark);
temp=temp->next;
i=i+1;
}
std::cout<<"number of nodes :"<<this->size<<"\n"<<"number of paths :"<<this->size-1<<"size of array published:"<<sizeof(marker_array.markers)<<"\n";



//std::thread t(PublishMarker,marker_pub,marker_array);
        while(ros::ok()){
marker_pub.publish(marker_array);
nodevec.publish(nodes);
}
//    });
//t.detach();
} 


geometry_msgs::Point Path::sendtoPlanner(double x, double y){
geometry_msgs::Point pt;
pt.x=x;
pt.y=y;
pt.z=0;
return pt;
}









visualization_msgs::Marker Path::sendtoRviz(double x, double y,std::string name, int id){
//ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>(name, 1);
uint32_t shape = visualization_msgs::Marker::SPHERE;

    visualization_msgs::Marker marker;
    // Set the frame ID and timestamp.  See the TF tutorials for information on these.
    marker.header.frame_id ="/map";
    marker.header.stamp = ros::Time::now();
    // Set the namespace and id for this marker.  This serves to create a unique ID
    // Any marker sent with the same namespace and id will overwrite the old one
    marker.ns = "basic_shapes";
    marker.id = id;

    // Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
    marker.type = shape;

    // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
    marker.action = visualization_msgs::Marker::ADD;

    // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
    marker.pose.position.x = x;
    marker.pose.position.y = y;
    marker.pose.position.z = 0;
    marker.pose.orientation.x = 0.0;
    marker.pose.orientation.y = 0.0;
    marker.pose.orientation.z = 0.0;
    marker.pose.orientation.w = 1.0;

    // Set the scale of the marker -- 1x1x1 here means 1m on a side
    marker.scale.x = 0.1;
    marker.scale.y = 0.1;
    marker.scale.z = 0.1;

    // Set the color -- be sure to set alpha to something non-zero!
    marker.color.r = 0.0f;
    marker.color.g = 1.0f;
    marker.color.b = 0.0f;
    marker.color.a = 1.0;

    marker.lifetime = ros::Duration();

    return marker;
}

visualization_msgs::Marker Path::sendtoRvizLine(Node n1, Node n2,std::string name, int id){
//ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>(name, 1);
//uint32_t shape = visualization_msgs::Marker::SPHERE;

    visualization_msgs::Marker line_list;
    // Set the frame ID and timestamp.  See the TF tutorials for information on these.
    line_list.header.frame_id ="/map";
    line_list.header.stamp = ros::Time::now();
    // Set the namespace and id for this marker.  This serves to create a unique ID
    // Any marker sent with the same namespace and id will overwrite the old one
    line_list.ns = "points_and_lines";
    line_list.id = this->size+id;

    // Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
   line_list.type = visualization_msgs::Marker::LINE_LIST;

    // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
     line_list.action = visualization_msgs::Marker::ADD;


    // Set the scale of the marker -- 1x1x1 here means 1m on a side
    line_list.scale.x = 0.1;
    line_list.scale.y = 0.1;

    // Set the color -- be sure to set alpha to something non-zero!
    line_list.color.r = 1.0;
    line_list.color.a = 1.0;
    geometry_msgs::Point p1,p2;
    p1.x=n1.x;
    p1.y=n1.y;
    p1.z=0;
    p2.x=n2.x;
    p2.y=n2.y;
    p2.z=0;
    line_list.points.push_back(p1);
    line_list.points.push_back(p2);
    
    line_list.lifetime = ros::Duration();

    return line_list;
}

/*void Path::PublishMarker(ros::Publisher marker_pub,visualization_msgs::MarkerArray marker_array){
while(ros::ok){
marker_pub.publish(marker_array);}
}*/

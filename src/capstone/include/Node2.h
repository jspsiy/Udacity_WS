//Node.h

#ifndef NODE   
#define NODE   
#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>
#include<thread>
#include<utility>
#include<vector>

struct Node{float x, y;
Node* next;};


class Path { 
public:
unsigned int size;
Path();

//copy
    Path(const Path& other){head=other.head;tail=other.tail;}//xvec=other.xvec;yvec=other.yvec;tvec=other.tvec;pubvec=other.pubvec; }
//move
    Path(Path&& other)  
   {head=other.head;tail=other.tail;other.head=nullptr;other.tail=nullptr;}//xvec=other.xvec;yvec=other.yvec;tvec=other.tvec;pubvec=other.pubvec;}

//copy operator constructor
    Path& operator=(const Path& other)     
{       
if (&other != this) {        
 delete head;delete tail;         
head = nullptr;tail = nullptr;        
 head= new Node{*(other.head)}; tail= new Node{*(other.tail)};     
 }      
 return *this;     }


//move operator constructor
Path& operator=(Path&& other)     
{ if (&other != this)
 { delete head;delete tail;      
head= new Node{*(other.head)}; tail= new Node{*(other.tail)};
other.head = nullptr;other.tail = nullptr;       } 
      return *this;     }
void getPath();
void push( float x,float y);
void deleteNode(int pos);
void printList() ;
void Plot();
Node* getHead(){return head; }
Node* getTail(){return tail; }
void setHead(){this->head=NULL; }
void setTail(){this->tail=NULL; }
visualization_msgs::Marker sendtoRviz(double x, double y,std::string n,int id);
geometry_msgs::Point sendtoPlanner(double x, double y);
visualization_msgs::Marker sendtoRvizLine(Node n1, Node n2,std::string name, int id);
~Path();//destructor
private: 
 ros::NodeHandle n;
  
    Node* head;
    Node* tail;
    //ros::Rate rate(5);
  // uint32_t shape = visualization_msgs::Marker::CUBE;
    std::vector<double> xvec;
    std::vector<double> yvec;
    //std::vector<std::thread> tvec;
    //std::vector<ros::Publisher> pubvec;
    //std::vector<std::vector<double> collection;
    //std::vector<double> nodetocollect;
    
}; 










#endif 

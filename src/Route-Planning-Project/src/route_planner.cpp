#include "route_planner.h"
#include <algorithm>

RoutePlanner::RoutePlanner(RouteModel &model, float start_x, float start_y, float end_x, float end_y): m_Model(model) {
    // Convert inputs to percentage:
    start_x *= 0.01;
    start_y *= 0.01;
    end_x *= 0.01;
    end_y *= 0.01;

    // TODO 2: Use the m_Model.FindClosestNode method to find the closest nodes to the starting and ending coordinates.
    // Store the nodes you find in the RoutePlanner's start_node and end_node attributes.
// since start_node and end_node is a pointer from routeplanner.h, we would want the address of m_Model 
    start_node=&m_Model.FindClosestNode(start_x,start_y); 
    end_node=&m_Model.FindClosestNode(end_x,end_y);

}


// TODO 3: Implement the CalculateHValue method.
// Tips:
// - You can use the distance to the end_node for the h value.
// - Node objects have a distance method to determine the distance to another node.

float RoutePlanner::CalculateHValue(RouteModel::Node const *node) {
//the passed value is a class pointer therefore you call functions in class as : classvariable->function. Since you want the actual value of the end_node you want to put a pointer(*) before passing end_node as (end_node) will only give you an address 
float h=node->distance(*(this->end_node));
return h;
}


// TODO 4: Complete the AddNeighbors method to expand the current node by adding all unvisited neighbors to the open list.
// Tips:
// - Use the FindNeighbors() method of the current_node to populate current_node.neighbors vector with all the neighbors.
// - For each node in current_node.neighbors, set the parent, the h_value, the g_value. 
// - Use CalculateHValue below to implement the h-Value calculation.
// - For each node in current_node.neighbors, add the neighbor to open_list and set the node's visited attribute to true.

void RoutePlanner::AddNeighbors(RouteModel::Node *current_node) {
current_node->FindNeighbors();
std::vector<RouteModel::Node*> nbors=current_node->neighbors;
for(RouteModel::Node* x:nbors)
{
x->parent=current_node;
x->g_value=current_node->g_value+current_node->distance(*x);
x->h_value=this->CalculateHValue(x);
this->open_list.push_back(x);
x->visited=true;
}

}

//A comparator function to be used for sorting
bool RoutePlanner::Check(const RouteModel::Node *begin,const RouteModel::Node *end)
{
return (begin->g_value+begin->h_value)>(end->g_value+end->h_value);
}
// TODO 5: Complete the NextNode method to sort the open list and return the next node.
// Tips:
// - Sort the open_list according to the sum of the h value and g value.
// - Create a pointer to the node in the list with the lowest sum.
// - Remove that node from the open_list.
// - Return the pointer.

//Function returns: RouteModel::Node* using class RoutePlanner's NextNode
RouteModel::Node* RoutePlanner::NextNode() { 
std::sort(this->open_list.begin(),this->open_list.end(),RoutePlanner::Check); //Sorts
RouteModel::Node *next=this->open_list.back();// sets nextnode to the lowest g+h value
this->open_list.pop_back(); // removes node with lowest g+h value. 
return next; //returns a pointer Initialized by RouteModel::Node *next 
 
}


// TODO 6: Complete the ConstructFinalPath method to return the final path found from your A* search.
// Tips:
// - This method should take the current (final) node as an argument and iteratively follow the 
//   chain of parents of nodes until the starting node is found.
// - For each node in the chain, add the distance from the node to its parent to the distance variable.
// - The returned vector should be in the correct order: the start node should be the first element
//   of the vector, the end node should be the last element.

std::vector<RouteModel::Node> RoutePlanner::ConstructFinalPath(RouteModel::Node *current_node) {
    // Create path_found vector
    distance = 0.0f;
    std::vector<RouteModel::Node> path_found;

    // TODO: Implement your solution here.
    while(current_node->parent!=nullptr){
    //vector collects Node values therefore convert Nodepointer to Node
    path_found.insert(path_found.begin(),*current_node);
    //function distance wants a Node value therefore convert Nodepointer to Node
    distance=distance+current_node->distance(*(current_node->parent));
    //sets current node to parent
    current_node=current_node->parent;
    }
    path_found.insert(path_found.begin(),*current_node);
    
    distance *= m_Model.MetricScale(); // Multiply the distance by the scale of the map to get meters.
    return path_found;

}

// TODO 7: Write the A* Search algorithm here.
// Tips:
// - Use the AddNeighbors method to add all of the neighbors of the current node to the open_list.
// - Use the NextNode() method to sort the open_list and return the next node.
// - When the search has reached the end_node, use the ConstructFinalPath method to return the final path that was found.
// - Store the final path in the m_Model.path attribute before the method exits. This path will then be displayed on the map tile.

void RoutePlanner::AStarSearch() {
    RouteModel::Node *current_node = nullptr;
    this->open_list.push_back(this->start_node);
    this->start_node->visited=true;	
    while(open_list.size()!=0)
    {
	//std::cout<<open_list.size()<<"\n";
	current_node=this->NextNode();
	if(current_node->distance(*(this->end_node))==0)
		{
			m_Model.path=this->ConstructFinalPath(end_node);
			return;
		}
			AddNeighbors(current_node);
    }
    // TODO: Implement your solution here.

}




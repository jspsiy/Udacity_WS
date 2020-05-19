#include <iostream>
#include <random>
#include "TrafficLight.h"
#include<thread>
#include<future>
/* Implementation of class "MessageQueue" */


TrafficLightPhase MessageQueue::receive()
{
    // FP.5a : The method receive should use std::unique_lock<std::mutex> and _condition.wait() 
    // to wait for and receive new messages and pull them from the queue using move semantics. 
    // The received object should then be returned by the receive function. 
std::unique_lock<std::mutex> lk(_mutex);
_condition.wait(lk,[this]{return this->_queue.size()!=0;});
TrafficLightPhase x=_queue.front();
_queue.pop_front();
return x;

}



void MessageQueue::send(TrafficLightPhase &&msg)
{
    // FP.4a : The method send should use the mechanisms std::lock_guard<std::mutex> 
    // as well as _condition.notify_one() to add a new message to the queue and afterwards send a notification.

    std::lock_guard<std::mutex> close(_mutex);
    _queue.push_back(msg);
    _condition.notify_one();
}


/* Implementation of class "TrafficLight" */


TrafficLight::TrafficLight()
{
    _currentPhase = TrafficLightPhase::red;
}

void TrafficLight::waitForGreen()
{
    // FP.5b : add the implementation of the method waitForGreen, in which an infinite while-loop 
    // runs and repeatedly calls the receive function on the message queue. 
    // Once it receives TrafficLightPhase::green, the method returns.
    while(true){
      TrafficLightPhase	msg=this->_queue.receive();
	if(msg==green){return;};
	}
}

TrafficLightPhase TrafficLight::getCurrentPhase()
{
    return _currentPhase;
}

void TrafficLight::simulate()
{
    // FP.2b : Finally, the private method „cycleThroughPhases“ should be started in a thread when the public method „simulate“ is called. To do this, use the thread queue in the base class. 
this->threads.push_back(std::thread(&TrafficLight::cycleThroughPhases,this));

}

// virtual function which is executed in a thread
void TrafficLight::cycleThroughPhases()
{
    // FP.2a : Implement the function with an infinite loop that measures the time between two loop cycles 
    // and toggles the current phase of the traffic light between red and green and sends an update method 
    // to the message queue using move semantics. The cycle duration should be a random value between 4 and 6 seconds. 
    // Also, the while-loop should use std::this_thread::sleep_for to wait 1ms between two cycles. 
 double duration=(double)std::rand()*(6.0-4.0)/(double)RAND_MAX+4.0;

 auto last=std::chrono::system_clock::now();
while(true)
{
	auto timeafterlast=std::chrono::duration_cast<std::chrono::seconds>(std::chrono::system_clock::now()-last);


// switch from current light to other light. 

	if((double)timeafterlast.count()>=duration)
	{
		std::this_thread::sleep_for(std::chrono::milliseconds(1));
		if (this->_currentPhase==red)
		{
		this->_currentPhase=green;
		}
		else
		{
		this->_currentPhase=red;
		}

	auto future=std::async(std::launch::async,&MessageQueue::send,&_queue,std::move(this->_currentPhase));
	future.wait();

	last=std::chrono::system_clock::now();
	duration=(double)std::rand()*(4.0-6.0)/(double)RAND_MAX+4.0;
	}
}
	

}



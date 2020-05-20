#include "processor.h"
#include "linux_parser.h"

// TODO: Return the aggregate CPU utilization
float Processor::Utilization() { 

this->previousactive = this->currentactive;

this->previoustotal = this->currenttotal;

this->currentactive = LinuxParser::ActiveJiffies();

this->currenttotal = LinuxParser::Jiffies();

return (this->currentactive - this->previousactive ) / (this->currenttotal - this->previoustotal);
  //return (float)LinuxParser::ActiveJiffies()/((float)LinuxParser::Jiffies());
  
}

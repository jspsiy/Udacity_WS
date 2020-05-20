#include <unistd.h>
#include <cstddef>
#include <set>
#include <string>
#include <vector>
#include <dirent.h>
#include <unistd.h>
#include <string>
#include <vector>
#include "process.h"
#include "processor.h"
#include "system.h"
#include<iostream>
using std::stof;
using std::to_string;
using std::set;
using std::size_t;
using std::string;
using std::vector;

// TODO: Return the system's CPU
Processor& System::Cpu() { return cpu_; }

// TODO: Return a container composed of the system's processes
vector<Process>& System::Processes() { 
vector<int> values=LinuxParser::Pids();
processes_={};
for(int x:values){
Process process(x);
//std::cout << "pid:" << x << std::endl;
processes_.push_back(process);}
std::sort(processes_.begin(),processes_.end());
return processes_; }

// TODO: Return the system's kernel identifier (string)
std::string System::Kernel() {return LinuxParser::Kernel();}

// TODO: Return the system's memory utilization
float System::MemoryUtilization() { return LinuxParser::MemoryUtilization(); }

// TODO: Return the operating system name
std::string System::OperatingSystem() {return LinuxParser::OperatingSystem();}

// TODO: Return the number of processes actively running on the system
int System::RunningProcesses() { return LinuxParser::RunningProcesses(); }

// TODO: Return the total number of processes on the system
int System::TotalProcesses() { return LinuxParser::TotalProcesses(); }

// TODO: Return the number of seconds since the system started running
long int System::UpTime() { return LinuxParser::UpTime(); }

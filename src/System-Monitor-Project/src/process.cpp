#include <unistd.h>
#include <cctype>
#include <sstream>
#include <string>
#include <vector>

#include "process.h"

using std::string;
using std::to_string;
using std::vector;

Process::Process(int v){
this->pid=v;
this->cpu=this->Process::CpuUtilization();
this->command = LinuxParser::Command(pid);
}

// TODO: Return this process's ID
int Process::Pid() { return pid; }

// TODO: Return this process's CPU utilization
float Process::CpuUtilization() { return LinuxParser::CpuUtilization(this->pid);}

// TODO: Return the command that generated this process
string Process::Command() { return this->command; }

// TODO: Return this process's memory utilization
string Process::Ram() { return LinuxParser::Ram(this->pid);}

// TODO: Return the user (name) that generated this process
string Process::User() { return LinuxParser::User(this->pid); }

// TODO: Return the age of this process (in seconds)
long int Process::UpTime() { return LinuxParser::UpTime(this->pid); }

// TODO: Overload the "less than" comparison operator for Process objects
// REMOVE: [[maybe_unused]] once you define the function
bool Process::operator<(Process const& a) const {
  return this->cpu > a.cpu; 

}	

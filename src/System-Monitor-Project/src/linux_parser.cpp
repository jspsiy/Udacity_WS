#include <dirent.h>
#include <unistd.h>
#include <string>
#include <vector>
#include<cassert>

#include<iostream>
#include<linux_parser.h>
using std::stof;
using std::string;
using std::to_string;
using std::vector;

// DONE: An example of how to read data from the filesystem
string LinuxParser::OperatingSystem() {
  string line;
  string key;
  string value;
  std::ifstream filestream(kOSPath);
  if (filestream.is_open()) {
    while (std::getline(filestream, line)) {
      std::replace(line.begin(), line.end(), ' ', '_');
      std::replace(line.begin(), line.end(), '=', ' ');
      std::replace(line.begin(), line.end(), '"', ' ');
      std::istringstream linestream(line);
      while (linestream >> key >> value) {
        if (key == "PRETTY_NAME") {
          std::replace(value.begin(), value.end(), '_', ' ');
          return value;
        }
      }
    }
  }
  return value;
}

// DONE: An example of how to read data from the filesystem
string LinuxParser::Kernel() {
  string os, kernel;
  string line;
  std::ifstream stream(kProcDirectory + kVersionFilename);
  if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> os >> kernel>>kernel;
  }
  return kernel;
}

// BONUS: Update this to use std::filesystem
vector<int> LinuxParser::Pids() {
  vector<int> pids;
  DIR* directory = opendir(kProcDirectory.c_str());
  struct dirent* file;
  while ((file = readdir(directory)) != nullptr) {
    // Is this a directory?
    if (file->d_type == DT_DIR) {
      // Is every character of the name a digit?
      string filename(file->d_name);
      if (std::all_of(filename.begin(), filename.end(), isdigit)) {
        int pid = stoi(filename);
        pids.push_back(pid);
      }
    }
  }
  closedir(directory);
  return pids;
}

// TODO: Read and return the system memory utilization
float LinuxParser::MemoryUtilization() {
  float total=0,free=0,buffers=0;
string key, value;
  string line;
  std::ifstream stream(kProcDirectory + kMeminfoFilename);
    if (stream.is_open()) {
    while (std::getline(stream, line)){ 
    std::istringstream linestream(line);
    while (linestream >> key >> value) {
        if (key == "MemTotal:")
	{
        total=stof(value);
	}
        if (key == "MemFree:") 
	{
        free=stof(value);
	}
        if (key == "Buffers:") 
	{
        buffers=stof(value);
	}
}}}
 return 1-(free/(total-buffers));
 }

// TODO: Read and return the system uptime
long LinuxParser::UpTime() {
string up;
  string line;
  std::ifstream stream(kProcDirectory + kUptimeFilename);
    if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> up;
  }
  return stol(up);
 }

// TODO: Read and return the number of jiffies for the system
long LinuxParser::Jiffies() { 
 long sum;
 string v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,cpu;
  string line;
  std::ifstream stream(kProcDirectory + kStatFilename);
    if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> cpu>>v1>>v2>>v3>>v4>>v5>>v6>>v7>>v8>>v9>>v10;
  }

  sum=stol(v1)+stol(v2)+stol(v3)+stol(v4)+stol(v5)+stol(v6)+stol(v7)+stol(v8);//+stol(v9)+stol(v10);
  return sum;
 }

// TODO: Read and return the number of active jiffies for a PID
// REMOVE: [[maybe_unused]] once you define the function
long LinuxParser::ActiveJiffies(int pid) { 
 string v1,v2,v3,v4,garbage;
  string line, spid=to_string(pid);
  std::ifstream stream(kProcDirectory +spid+ kStatFilename);
    if (stream.is_open()) {
    std::getline(stream, line);
    
    std::istringstream linestream(line);
   for(int i=0;i<13;i++)
	{
		linestream >> garbage;
	}
    linestream>>v1>>v2>>v3>>v4;
  }
  
  return stol(v1)+stol(v2)+stol(v3)+stol(v4);
}

// TODO: Read and return the number of active jiffies for the system
long LinuxParser::ActiveJiffies() {
 long sum;
 string v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,cpu;
  string line;
  std::ifstream stream(kProcDirectory + kStatFilename);
    if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> cpu>>v1>>v2>>v3>>v4>>v5>>v6>>v7>>v8>>v9>>v10;
  }

  sum=stol(v1)+stol(v2)+stol(v3)+stol(v6)+stol(v7)+stol(v8);//+stol(v9)+stol(v10);
  return sum;
 }

// TODO: Read and return the number of idle jiffies for the system
long LinuxParser::IdleJiffies() { 

 long sum;
 string v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,cpu;
  string line;
  std::ifstream stream(kProcDirectory + kStatFilename);
    if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> cpu>>v1>>v2>>v3>>v4>>v5>>v6>>v7>>v8>>v9>>v10;
  }

  sum=stol(v4)+stol(v5);
  return sum;
 }

// TODO: Read and return CPU utilization
vector<string> LinuxParser::CpuUtilization() { 
 vector<string> valuesutilized;
 string v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,cpu;
  string line;
  std::ifstream stream(kProcDirectory + kStatFilename);
    if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    linestream >> cpu>>v1>>v2>>v3>>v4>>v5>>v6>>v7>>v8>>v9>>v10;
  }

  valuesutilized.push_back(v1);
  valuesutilized.push_back(v2);
  valuesutilized.push_back(v3);
  valuesutilized.push_back(v4);
  valuesutilized.push_back(v5);
  valuesutilized.push_back(v6);
  valuesutilized.push_back(v7);
  valuesutilized.push_back(v8);
  valuesutilized.push_back(v9);
  valuesutilized.push_back(v10);
  return valuesutilized;
 }

float LinuxParser::CpuUtilization(int pid) { 
   float h = sysconf(_SC_CLK_TCK);
  float t = LinuxParser::ActiveJiffies(pid)/ h; 
  float s = LinuxParser::UpTime(pid);
  return t/s;
 }




// TODO: Read and return the total number of processes
int LinuxParser::TotalProcesses() { 
 
string v1;
 string key;
  string line;
  std::ifstream stream(kProcDirectory + kStatFilename);
    if (stream.is_open()) {
    while (std::getline(stream,line)){
    std::istringstream linestream(line);
    linestream>>key;
	if (key=="processes"){linestream>>v1;break;}
	}
    
  }
  return stoi(v1);

}

// TODO: Read and return the number of running processes
int LinuxParser::RunningProcesses() { 
 
string v1;
 string key;
  string line;
  std::ifstream stream(kProcDirectory + kStatFilename);
    if (stream.is_open()) {
    while (std::getline(stream,line)){
    std::istringstream linestream(line);
    linestream>>key;
	if (key=="procs_running"){linestream>>v1;break;}
	}
    
  }
  return stoi(v1);
 }

// TODO: Read and return the command associated with a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::Command(int pid) { 
 string key;
  string line, spid=to_string(pid);
  std::ifstream stream(kProcDirectory +spid+ kCmdlineFilename);
    if (stream.is_open()) {
    while(std::getline(stream, line)){
	std::istringstream linestream(line);
	linestream>>key;
	};
  }
  
  return key; 
}

// TODO: Read and return the memory used by a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::Ram(int pid) { 
 string key;
int value;
  string line, spid=to_string(pid);
  std::ifstream stream(kProcDirectory +spid+ kStatusFilename);
    if (stream.is_open()) {
    while(std::getline(stream, line)){
	std::istringstream linestream(line);
	linestream>>key;
	if (key=="VmSize:"){linestream>>value;return std::to_string(value/1000);}
	};
  }
return "0"; }

// TODO: Read and return the user ID associated with a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::Uid(int pid) { 
 string key,value;
  string line, spid=to_string(pid);
  std::ifstream stream(kProcDirectory +spid+ kStatusFilename);
    if (stream.is_open()) {
    while(std::getline(stream, line)){
	std::istringstream linestream(line);
	linestream>>key;
	if (key=="Uid:"){linestream>>value;return value;}
	};
  }

return string(); }

// TODO: Read and return the user associated with a process
// REMOVE: [[maybe_unused]] once you define the function
string LinuxParser::User(int pid) {
  string user, pass, id, line;
  string uid = LinuxParser::Uid(pid);
  std::ifstream stream(kPasswordPath);
if (stream.is_open()) {
    while (std::getline(stream, line)){
      std::replace(line.begin(), line.end(), ':', ' ');
      std::istringstream linestream(line);
    	while (linestream >> user >> pass >> id) {
          if (id==LinuxParser::Uid(pid)){
          return user;
        }
        }
      	}
    }

 return string(); }

// TODO: Read and return the uptime of a process
// REMOVE: [[maybe_unused]] once you define the function
long LinuxParser::UpTime(int pid) {  
 /* string value, line,spid=to_string(pid);
  long int start, uptimewanted;
  vector<string> stats;
  std::ifstream stream(kProcDirectory + spid + kStatFilename);
  if (stream.is_open()) {
    std::getline(stream, line);
    std::istringstream linestream(line);
    while (linestream >> value) {
    stats.push_back(value);
    }
    }
  start= std::stol(stats[21])/sysconf(_SC_CLK_TCK);
  //std::cout<< LinuxParser::UpTime(24013)<<"\n";
  uptimewanted =  LinuxParser::UpTime() - start;
  return uptimewanted;*/

 string v1,v2,v3,v4,v5,garbage;
  string line, spid=to_string(pid);
  std::ifstream stream(kProcDirectory +spid+ kStatFilename);
    if (stream.is_open()) {
    std::getline(stream, line);
    
    std::istringstream linestream(line);
   for(int i=0;i<13;i++)
	{
		linestream >> garbage;
	}
    linestream>>v1>>v2>>v3>>v4>>garbage>>garbage>>garbage>>garbage>>v5;
  }
  long hertz=sysconf(_SC_CLK_TCK);
  
  return (LinuxParser::UpTime()-stol(v5)/hertz);

 }

#include <string>

#include "format.h"

using std::string;
using std::to_string;
// TODO: Complete this helper function
// INPUT: Long int measuring seconds
// OUTPUT: HH:MM:SS
// REMOVE: [[maybe_unused]] once you define the function
string Format::ElapsedTime(long seconds) { 
  int hours=(int)seconds/3600;
  int defecated_seconds_from_hours{(int)seconds-hours*3600};
  int minutes{defecated_seconds_from_hours/60};
  int defecated_seconds_from_minutes{(int)seconds-hours*3600-minutes*60};
  
  string hour_string=hours<10?"0"+to_string(hours):to_string(hours);
  string minute_string=minutes<10?"0"+to_string(minutes):to_string(minutes);
  string second_string=defecated_seconds_from_minutes<10?"0"+to_string(defecated_seconds_from_minutes):to_string(defecated_seconds_from_minutes);
 
  string time{hour_string+':'+minute_string+':'+second_string};
  return time; }

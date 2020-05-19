// Generated by gencpp from file agv_control_msgs/RemovalRequest.msg
// DO NOT EDIT!


#ifndef AGV_CONTROL_MSGS_MESSAGE_REMOVALREQUEST_H
#define AGV_CONTROL_MSGS_MESSAGE_REMOVALREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace agv_control_msgs
{
template <class ContainerAllocator>
struct RemovalRequest_
{
  typedef RemovalRequest_<ContainerAllocator> Type;

  RemovalRequest_()
    : vehicleName()
    , priority(0)
    , req_pz_seq(0)
    , message()  {
    }
  RemovalRequest_(const ContainerAllocator& _alloc)
    : vehicleName(_alloc)
    , priority(0)
    , req_pz_seq(0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _vehicleName_type;
  _vehicleName_type vehicleName;

   typedef int32_t _priority_type;
  _priority_type priority;

   typedef int32_t _req_pz_seq_type;
  _req_pz_seq_type req_pz_seq;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RemovalRequest_

typedef ::agv_control_msgs::RemovalRequest_<std::allocator<void> > RemovalRequest;

typedef boost::shared_ptr< ::agv_control_msgs::RemovalRequest > RemovalRequestPtr;
typedef boost::shared_ptr< ::agv_control_msgs::RemovalRequest const> RemovalRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_control_msgs::RemovalRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_control_msgs::RemovalRequest_<ContainerAllocator1> & lhs, const ::agv_control_msgs::RemovalRequest_<ContainerAllocator2> & rhs)
{
  return lhs.vehicleName == rhs.vehicleName &&
    lhs.priority == rhs.priority &&
    lhs.req_pz_seq == rhs.req_pz_seq &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_control_msgs::RemovalRequest_<ContainerAllocator1> & lhs, const ::agv_control_msgs::RemovalRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b4ebc535f66ea750faed50bf32189bf7";
  }

  static const char* value(const ::agv_control_msgs::RemovalRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb4ebc535f66ea750ULL;
  static const uint64_t static_value2 = 0xfaed50bf32189bf7ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_control_msgs/RemovalRequest";
  }

  static const char* value(const ::agv_control_msgs::RemovalRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string vehicleName\n"
"int32 priority\n"
"int32 req_pz_seq\n"
"\n"
"string message\n"
;
  }

  static const char* value(const ::agv_control_msgs::RemovalRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vehicleName);
      stream.next(m.priority);
      stream.next(m.req_pz_seq);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RemovalRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_control_msgs::RemovalRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_control_msgs::RemovalRequest_<ContainerAllocator>& v)
  {
    s << indent << "vehicleName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.vehicleName);
    s << indent << "priority: ";
    Printer<int32_t>::stream(s, indent + "  ", v.priority);
    s << indent << "req_pz_seq: ";
    Printer<int32_t>::stream(s, indent + "  ", v.req_pz_seq);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_CONTROL_MSGS_MESSAGE_REMOVALREQUEST_H
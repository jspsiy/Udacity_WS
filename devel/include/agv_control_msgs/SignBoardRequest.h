// Generated by gencpp from file agv_control_msgs/SignBoardRequest.msg
// DO NOT EDIT!


#ifndef AGV_CONTROL_MSGS_MESSAGE_SIGNBOARDREQUEST_H
#define AGV_CONTROL_MSGS_MESSAGE_SIGNBOARDREQUEST_H


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
struct SignBoardRequest_
{
  typedef SignBoardRequest_<ContainerAllocator> Type;

  SignBoardRequest_()
    : vehicleName()  {
    }
  SignBoardRequest_(const ContainerAllocator& _alloc)
    : vehicleName(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _vehicleName_type;
  _vehicleName_type vehicleName;





  typedef boost::shared_ptr< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SignBoardRequest_

typedef ::agv_control_msgs::SignBoardRequest_<std::allocator<void> > SignBoardRequest;

typedef boost::shared_ptr< ::agv_control_msgs::SignBoardRequest > SignBoardRequestPtr;
typedef boost::shared_ptr< ::agv_control_msgs::SignBoardRequest const> SignBoardRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_control_msgs::SignBoardRequest_<ContainerAllocator1> & lhs, const ::agv_control_msgs::SignBoardRequest_<ContainerAllocator2> & rhs)
{
  return lhs.vehicleName == rhs.vehicleName;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_control_msgs::SignBoardRequest_<ContainerAllocator1> & lhs, const ::agv_control_msgs::SignBoardRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e2c42c1f23baba357f21a2e63400d4ff";
  }

  static const char* value(const ::agv_control_msgs::SignBoardRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe2c42c1f23baba35ULL;
  static const uint64_t static_value2 = 0x7f21a2e63400d4ffULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_control_msgs/SignBoardRequest";
  }

  static const char* value(const ::agv_control_msgs::SignBoardRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string vehicleName\n"
;
  }

  static const char* value(const ::agv_control_msgs::SignBoardRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vehicleName);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SignBoardRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_control_msgs::SignBoardRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_control_msgs::SignBoardRequest_<ContainerAllocator>& v)
  {
    s << indent << "vehicleName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.vehicleName);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_CONTROL_MSGS_MESSAGE_SIGNBOARDREQUEST_H

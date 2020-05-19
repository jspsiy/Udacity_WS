// Generated by gencpp from file agv_control_msgs/stateInfo.msg
// DO NOT EDIT!


#ifndef AGV_CONTROL_MSGS_MESSAGE_STATEINFO_H
#define AGV_CONTROL_MSGS_MESSAGE_STATEINFO_H


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
struct stateInfo_
{
  typedef stateInfo_<ContainerAllocator> Type;

  stateInfo_()
    : moving(0)  {
    }
  stateInfo_(const ContainerAllocator& _alloc)
    : moving(0)  {
  (void)_alloc;
    }



   typedef int32_t _moving_type;
  _moving_type moving;





  typedef boost::shared_ptr< ::agv_control_msgs::stateInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_control_msgs::stateInfo_<ContainerAllocator> const> ConstPtr;

}; // struct stateInfo_

typedef ::agv_control_msgs::stateInfo_<std::allocator<void> > stateInfo;

typedef boost::shared_ptr< ::agv_control_msgs::stateInfo > stateInfoPtr;
typedef boost::shared_ptr< ::agv_control_msgs::stateInfo const> stateInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_control_msgs::stateInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_control_msgs::stateInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_control_msgs::stateInfo_<ContainerAllocator1> & lhs, const ::agv_control_msgs::stateInfo_<ContainerAllocator2> & rhs)
{
  return lhs.moving == rhs.moving;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_control_msgs::stateInfo_<ContainerAllocator1> & lhs, const ::agv_control_msgs::stateInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::agv_control_msgs::stateInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_control_msgs::stateInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_control_msgs::stateInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_control_msgs::stateInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_control_msgs::stateInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_control_msgs::stateInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_control_msgs::stateInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c62e955e9737e1c30eefd84dfe366ed8";
  }

  static const char* value(const ::agv_control_msgs::stateInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc62e955e9737e1c3ULL;
  static const uint64_t static_value2 = 0x0eefd84dfe366ed8ULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_control_msgs::stateInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_control_msgs/stateInfo";
  }

  static const char* value(const ::agv_control_msgs::stateInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_control_msgs::stateInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 moving\n"
;
  }

  static const char* value(const ::agv_control_msgs::stateInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_control_msgs::stateInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.moving);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct stateInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_control_msgs::stateInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_control_msgs::stateInfo_<ContainerAllocator>& v)
  {
    s << indent << "moving: ";
    Printer<int32_t>::stream(s, indent + "  ", v.moving);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_CONTROL_MSGS_MESSAGE_STATEINFO_H
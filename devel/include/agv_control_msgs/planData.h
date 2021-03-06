// Generated by gencpp from file agv_control_msgs/planData.msg
// DO NOT EDIT!


#ifndef AGV_CONTROL_MSGS_MESSAGE_PLANDATA_H
#define AGV_CONTROL_MSGS_MESSAGE_PLANDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <agv_control_msgs/stringArray.h>
#include <agv_control_msgs/gridData.h>

namespace agv_control_msgs
{
template <class ContainerAllocator>
struct planData_
{
  typedef planData_<ContainerAllocator> Type;

  planData_()
    : header()
    , xp()
    , yp()
    , fip()
    , sp()
    , sectors()
    , pz_control()
    , grid()  {
    }
  planData_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , xp(_alloc)
    , yp(_alloc)
    , fip(_alloc)
    , sp(_alloc)
    , sectors(_alloc)
    , pz_control(_alloc)
    , grid(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _xp_type;
  _xp_type xp;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _yp_type;
  _yp_type yp;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _fip_type;
  _fip_type fip;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _sp_type;
  _sp_type sp;

   typedef std::vector< ::agv_control_msgs::stringArray_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::agv_control_msgs::stringArray_<ContainerAllocator> >::other >  _sectors_type;
  _sectors_type sectors;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _pz_control_type;
  _pz_control_type pz_control;

   typedef  ::agv_control_msgs::gridData_<ContainerAllocator>  _grid_type;
  _grid_type grid;





  typedef boost::shared_ptr< ::agv_control_msgs::planData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::agv_control_msgs::planData_<ContainerAllocator> const> ConstPtr;

}; // struct planData_

typedef ::agv_control_msgs::planData_<std::allocator<void> > planData;

typedef boost::shared_ptr< ::agv_control_msgs::planData > planDataPtr;
typedef boost::shared_ptr< ::agv_control_msgs::planData const> planDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::agv_control_msgs::planData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::agv_control_msgs::planData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::agv_control_msgs::planData_<ContainerAllocator1> & lhs, const ::agv_control_msgs::planData_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.xp == rhs.xp &&
    lhs.yp == rhs.yp &&
    lhs.fip == rhs.fip &&
    lhs.sp == rhs.sp &&
    lhs.sectors == rhs.sectors &&
    lhs.pz_control == rhs.pz_control &&
    lhs.grid == rhs.grid;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::agv_control_msgs::planData_<ContainerAllocator1> & lhs, const ::agv_control_msgs::planData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace agv_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::agv_control_msgs::planData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::agv_control_msgs::planData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_control_msgs::planData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::agv_control_msgs::planData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_control_msgs::planData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::agv_control_msgs::planData_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::agv_control_msgs::planData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f3df86da21172dbd8bb9f18e14c1164e";
  }

  static const char* value(const ::agv_control_msgs::planData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf3df86da21172dbdULL;
  static const uint64_t static_value2 = 0x8bb9f18e14c1164eULL;
};

template<class ContainerAllocator>
struct DataType< ::agv_control_msgs::planData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "agv_control_msgs/planData";
  }

  static const char* value(const ::agv_control_msgs::planData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::agv_control_msgs::planData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"float32[] xp\n"
"float32[] yp\n"
"float32[] fip\n"
"float32[] sp\n"
"\n"
"stringArray[] sectors\n"
"bool[] pz_control\n"
"\n"
"gridData grid\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: agv_control_msgs/stringArray\n"
"string[] data\n"
"\n"
"================================================================================\n"
"MSG: agv_control_msgs/gridData\n"
"arrayData[] xGrid\n"
"arrayData[] yGrid\n"
"arrayData[] timeInGrid\n"
"arrayData[] timeOutGrid\n"
"\n"
"================================================================================\n"
"MSG: agv_control_msgs/arrayData\n"
"float32[] data\n"
;
  }

  static const char* value(const ::agv_control_msgs::planData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::agv_control_msgs::planData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.xp);
      stream.next(m.yp);
      stream.next(m.fip);
      stream.next(m.sp);
      stream.next(m.sectors);
      stream.next(m.pz_control);
      stream.next(m.grid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct planData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::agv_control_msgs::planData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::agv_control_msgs::planData_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "xp[]" << std::endl;
    for (size_t i = 0; i < v.xp.size(); ++i)
    {
      s << indent << "  xp[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.xp[i]);
    }
    s << indent << "yp[]" << std::endl;
    for (size_t i = 0; i < v.yp.size(); ++i)
    {
      s << indent << "  yp[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.yp[i]);
    }
    s << indent << "fip[]" << std::endl;
    for (size_t i = 0; i < v.fip.size(); ++i)
    {
      s << indent << "  fip[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.fip[i]);
    }
    s << indent << "sp[]" << std::endl;
    for (size_t i = 0; i < v.sp.size(); ++i)
    {
      s << indent << "  sp[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.sp[i]);
    }
    s << indent << "sectors[]" << std::endl;
    for (size_t i = 0; i < v.sectors.size(); ++i)
    {
      s << indent << "  sectors[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::agv_control_msgs::stringArray_<ContainerAllocator> >::stream(s, indent + "    ", v.sectors[i]);
    }
    s << indent << "pz_control[]" << std::endl;
    for (size_t i = 0; i < v.pz_control.size(); ++i)
    {
      s << indent << "  pz_control[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.pz_control[i]);
    }
    s << indent << "grid: ";
    s << std::endl;
    Printer< ::agv_control_msgs::gridData_<ContainerAllocator> >::stream(s, indent + "  ", v.grid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AGV_CONTROL_MSGS_MESSAGE_PLANDATA_H

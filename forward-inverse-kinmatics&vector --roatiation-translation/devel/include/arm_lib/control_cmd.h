// Generated by gencpp from file arm_lib/control_cmd.msg
// DO NOT EDIT!


#ifndef ARM_LIB_MESSAGE_CONTROL_CMD_H
#define ARM_LIB_MESSAGE_CONTROL_CMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_lib
{
template <class ContainerAllocator>
struct control_cmd_
{
  typedef control_cmd_<ContainerAllocator> Type;

  control_cmd_()
    : cmd()  {
    }
  control_cmd_(const ContainerAllocator& _alloc)
    : cmd(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cmd_type;
  _cmd_type cmd;





  typedef boost::shared_ptr< ::arm_lib::control_cmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_lib::control_cmd_<ContainerAllocator> const> ConstPtr;

}; // struct control_cmd_

typedef ::arm_lib::control_cmd_<std::allocator<void> > control_cmd;

typedef boost::shared_ptr< ::arm_lib::control_cmd > control_cmdPtr;
typedef boost::shared_ptr< ::arm_lib::control_cmd const> control_cmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_lib::control_cmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_lib::control_cmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_lib::control_cmd_<ContainerAllocator1> & lhs, const ::arm_lib::control_cmd_<ContainerAllocator2> & rhs)
{
  return lhs.cmd == rhs.cmd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_lib::control_cmd_<ContainerAllocator1> & lhs, const ::arm_lib::control_cmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_lib

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arm_lib::control_cmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_lib::control_cmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_lib::control_cmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_lib::control_cmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_lib::control_cmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_lib::control_cmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_lib::control_cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "43a54fa49066cddcf148717d9d4a6353";
  }

  static const char* value(const ::arm_lib::control_cmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x43a54fa49066cddcULL;
  static const uint64_t static_value2 = 0xf148717d9d4a6353ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_lib::control_cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_lib/control_cmd";
  }

  static const char* value(const ::arm_lib::control_cmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_lib::control_cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string cmd\n"
;
  }

  static const char* value(const ::arm_lib::control_cmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_lib::control_cmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct control_cmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_lib::control_cmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_lib::control_cmd_<ContainerAllocator>& v)
  {
    s << indent << "cmd: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_LIB_MESSAGE_CONTROL_CMD_H
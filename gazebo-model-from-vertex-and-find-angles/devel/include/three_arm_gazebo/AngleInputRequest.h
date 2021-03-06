// Generated by gencpp from file three_arm_gazebo/AngleInputRequest.msg
// DO NOT EDIT!


#ifndef THREE_ARM_GAZEBO_MESSAGE_ANGLEINPUTREQUEST_H
#define THREE_ARM_GAZEBO_MESSAGE_ANGLEINPUTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace three_arm_gazebo
{
template <class ContainerAllocator>
struct AngleInputRequest_
{
  typedef AngleInputRequest_<ContainerAllocator> Type;

  AngleInputRequest_()
    : jointOneAngle(0.0)
    , jointTwoAngle(0.0)
    , jointThreeAngle(0.0)
    , jointFourAngle(0.0)  {
    }
  AngleInputRequest_(const ContainerAllocator& _alloc)
    : jointOneAngle(0.0)
    , jointTwoAngle(0.0)
    , jointThreeAngle(0.0)
    , jointFourAngle(0.0)  {
  (void)_alloc;
    }



   typedef double _jointOneAngle_type;
  _jointOneAngle_type jointOneAngle;

   typedef double _jointTwoAngle_type;
  _jointTwoAngle_type jointTwoAngle;

   typedef double _jointThreeAngle_type;
  _jointThreeAngle_type jointThreeAngle;

   typedef double _jointFourAngle_type;
  _jointFourAngle_type jointFourAngle;





  typedef boost::shared_ptr< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AngleInputRequest_

typedef ::three_arm_gazebo::AngleInputRequest_<std::allocator<void> > AngleInputRequest;

typedef boost::shared_ptr< ::three_arm_gazebo::AngleInputRequest > AngleInputRequestPtr;
typedef boost::shared_ptr< ::three_arm_gazebo::AngleInputRequest const> AngleInputRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator1> & lhs, const ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator2> & rhs)
{
  return lhs.jointOneAngle == rhs.jointOneAngle &&
    lhs.jointTwoAngle == rhs.jointTwoAngle &&
    lhs.jointThreeAngle == rhs.jointThreeAngle &&
    lhs.jointFourAngle == rhs.jointFourAngle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator1> & lhs, const ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace three_arm_gazebo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7b58cc9c6acfc74729d0ca9f99d93c5a";
  }

  static const char* value(const ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7b58cc9c6acfc747ULL;
  static const uint64_t static_value2 = 0x29d0ca9f99d93c5aULL;
};

template<class ContainerAllocator>
struct DataType< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "three_arm_gazebo/AngleInputRequest";
  }

  static const char* value(const ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 jointOneAngle\n"
"float64 jointTwoAngle\n"
"float64 jointThreeAngle\n"
"float64 jointFourAngle\n"
"\n"
;
  }

  static const char* value(const ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.jointOneAngle);
      stream.next(m.jointTwoAngle);
      stream.next(m.jointThreeAngle);
      stream.next(m.jointFourAngle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AngleInputRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::three_arm_gazebo::AngleInputRequest_<ContainerAllocator>& v)
  {
    s << indent << "jointOneAngle: ";
    Printer<double>::stream(s, indent + "  ", v.jointOneAngle);
    s << indent << "jointTwoAngle: ";
    Printer<double>::stream(s, indent + "  ", v.jointTwoAngle);
    s << indent << "jointThreeAngle: ";
    Printer<double>::stream(s, indent + "  ", v.jointThreeAngle);
    s << indent << "jointFourAngle: ";
    Printer<double>::stream(s, indent + "  ", v.jointFourAngle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // THREE_ARM_GAZEBO_MESSAGE_ANGLEINPUTREQUEST_H

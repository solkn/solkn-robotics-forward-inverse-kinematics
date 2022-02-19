// Generated by gencpp from file beginner_tutorials/TransformVector.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_TRANSFORMVECTOR_H
#define BEGINNER_TUTORIALS_MESSAGE_TRANSFORMVECTOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct TransformVector_
{
  typedef TransformVector_<ContainerAllocator> Type;

  TransformVector_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , g(0.0)
    , a(0.0)
    , b(0.0)
    , c(0.0)  {
    }
  TransformVector_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , g(0.0)
    , a(0.0)
    , b(0.0)
    , c(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _g_type;
  _g_type g;

   typedef double _a_type;
  _a_type a;

   typedef double _b_type;
  _b_type b;

   typedef double _c_type;
  _c_type c;





  typedef boost::shared_ptr< ::beginner_tutorials::TransformVector_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::TransformVector_<ContainerAllocator> const> ConstPtr;

}; // struct TransformVector_

typedef ::beginner_tutorials::TransformVector_<std::allocator<void> > TransformVector;

typedef boost::shared_ptr< ::beginner_tutorials::TransformVector > TransformVectorPtr;
typedef boost::shared_ptr< ::beginner_tutorials::TransformVector const> TransformVectorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::TransformVector_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::TransformVector_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::TransformVector_<ContainerAllocator1> & lhs, const ::beginner_tutorials::TransformVector_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.g == rhs.g &&
    lhs.a == rhs.a &&
    lhs.b == rhs.b &&
    lhs.c == rhs.c;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::TransformVector_<ContainerAllocator1> & lhs, const ::beginner_tutorials::TransformVector_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::TransformVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::TransformVector_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::TransformVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::TransformVector_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::TransformVector_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::TransformVector_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::TransformVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ac72d28376c7170353aa1485b4f8e06a";
  }

  static const char* value(const ::beginner_tutorials::TransformVector_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xac72d28376c71703ULL;
  static const uint64_t static_value2 = 0x53aa1485b4f8e06aULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::TransformVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/TransformVector";
  }

  static const char* value(const ::beginner_tutorials::TransformVector_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::TransformVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 g\n"
"float64 a\n"
"float64 b\n"
"float64 c\n"
;
  }

  static const char* value(const ::beginner_tutorials::TransformVector_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::TransformVector_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.g);
      stream.next(m.a);
      stream.next(m.b);
      stream.next(m.c);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TransformVector_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::TransformVector_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::TransformVector_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "g: ";
    Printer<double>::stream(s, indent + "  ", v.g);
    s << indent << "a: ";
    Printer<double>::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    Printer<double>::stream(s, indent + "  ", v.b);
    s << indent << "c: ";
    Printer<double>::stream(s, indent + "  ", v.c);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_TRANSFORMVECTOR_H

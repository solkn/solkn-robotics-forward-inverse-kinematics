// Generated by gencpp from file three_arm_gazebo/AngleInput.msg
// DO NOT EDIT!


#ifndef THREE_ARM_GAZEBO_MESSAGE_ANGLEINPUT_H
#define THREE_ARM_GAZEBO_MESSAGE_ANGLEINPUT_H

#include <ros/service_traits.h>


#include <three_arm_gazebo/AngleInputRequest.h>
#include <three_arm_gazebo/AngleInputResponse.h>


namespace three_arm_gazebo
{

struct AngleInput
{

typedef AngleInputRequest Request;
typedef AngleInputResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AngleInput
} // namespace three_arm_gazebo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::three_arm_gazebo::AngleInput > {
  static const char* value()
  {
    return "7b58cc9c6acfc74729d0ca9f99d93c5a";
  }

  static const char* value(const ::three_arm_gazebo::AngleInput&) { return value(); }
};

template<>
struct DataType< ::three_arm_gazebo::AngleInput > {
  static const char* value()
  {
    return "three_arm_gazebo/AngleInput";
  }

  static const char* value(const ::three_arm_gazebo::AngleInput&) { return value(); }
};


// service_traits::MD5Sum< ::three_arm_gazebo::AngleInputRequest> should match
// service_traits::MD5Sum< ::three_arm_gazebo::AngleInput >
template<>
struct MD5Sum< ::three_arm_gazebo::AngleInputRequest>
{
  static const char* value()
  {
    return MD5Sum< ::three_arm_gazebo::AngleInput >::value();
  }
  static const char* value(const ::three_arm_gazebo::AngleInputRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::three_arm_gazebo::AngleInputRequest> should match
// service_traits::DataType< ::three_arm_gazebo::AngleInput >
template<>
struct DataType< ::three_arm_gazebo::AngleInputRequest>
{
  static const char* value()
  {
    return DataType< ::three_arm_gazebo::AngleInput >::value();
  }
  static const char* value(const ::three_arm_gazebo::AngleInputRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::three_arm_gazebo::AngleInputResponse> should match
// service_traits::MD5Sum< ::three_arm_gazebo::AngleInput >
template<>
struct MD5Sum< ::three_arm_gazebo::AngleInputResponse>
{
  static const char* value()
  {
    return MD5Sum< ::three_arm_gazebo::AngleInput >::value();
  }
  static const char* value(const ::three_arm_gazebo::AngleInputResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::three_arm_gazebo::AngleInputResponse> should match
// service_traits::DataType< ::three_arm_gazebo::AngleInput >
template<>
struct DataType< ::three_arm_gazebo::AngleInputResponse>
{
  static const char* value()
  {
    return DataType< ::three_arm_gazebo::AngleInput >::value();
  }
  static const char* value(const ::three_arm_gazebo::AngleInputResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // THREE_ARM_GAZEBO_MESSAGE_ANGLEINPUT_H
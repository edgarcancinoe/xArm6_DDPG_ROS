// Generated by gencpp from file xarm_msgs/FtIdenLoad.msg
// DO NOT EDIT!


#ifndef XARM_MSGS_MESSAGE_FTIDENLOAD_H
#define XARM_MSGS_MESSAGE_FTIDENLOAD_H

#include <ros/service_traits.h>


#include <xarm_msgs/FtIdenLoadRequest.h>
#include <xarm_msgs/FtIdenLoadResponse.h>


namespace xarm_msgs
{

struct FtIdenLoad
{

typedef FtIdenLoadRequest Request;
typedef FtIdenLoadResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FtIdenLoad
} // namespace xarm_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::xarm_msgs::FtIdenLoad > {
  static const char* value()
  {
    return "9470c18b0944f559a19d029d524ee6b1";
  }

  static const char* value(const ::xarm_msgs::FtIdenLoad&) { return value(); }
};

template<>
struct DataType< ::xarm_msgs::FtIdenLoad > {
  static const char* value()
  {
    return "xarm_msgs/FtIdenLoad";
  }

  static const char* value(const ::xarm_msgs::FtIdenLoad&) { return value(); }
};


// service_traits::MD5Sum< ::xarm_msgs::FtIdenLoadRequest> should match
// service_traits::MD5Sum< ::xarm_msgs::FtIdenLoad >
template<>
struct MD5Sum< ::xarm_msgs::FtIdenLoadRequest>
{
  static const char* value()
  {
    return MD5Sum< ::xarm_msgs::FtIdenLoad >::value();
  }
  static const char* value(const ::xarm_msgs::FtIdenLoadRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::xarm_msgs::FtIdenLoadRequest> should match
// service_traits::DataType< ::xarm_msgs::FtIdenLoad >
template<>
struct DataType< ::xarm_msgs::FtIdenLoadRequest>
{
  static const char* value()
  {
    return DataType< ::xarm_msgs::FtIdenLoad >::value();
  }
  static const char* value(const ::xarm_msgs::FtIdenLoadRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::xarm_msgs::FtIdenLoadResponse> should match
// service_traits::MD5Sum< ::xarm_msgs::FtIdenLoad >
template<>
struct MD5Sum< ::xarm_msgs::FtIdenLoadResponse>
{
  static const char* value()
  {
    return MD5Sum< ::xarm_msgs::FtIdenLoad >::value();
  }
  static const char* value(const ::xarm_msgs::FtIdenLoadResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::xarm_msgs::FtIdenLoadResponse> should match
// service_traits::DataType< ::xarm_msgs::FtIdenLoad >
template<>
struct DataType< ::xarm_msgs::FtIdenLoadResponse>
{
  static const char* value()
  {
    return DataType< ::xarm_msgs::FtIdenLoad >::value();
  }
  static const char* value(const ::xarm_msgs::FtIdenLoadResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // XARM_MSGS_MESSAGE_FTIDENLOAD_H

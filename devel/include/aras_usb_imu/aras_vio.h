// Generated by gencpp from file aras_usb_imu/aras_vio.msg
// DO NOT EDIT!


#ifndef ARAS_USB_IMU_MESSAGE_ARAS_VIO_H
#define ARAS_USB_IMU_MESSAGE_ARAS_VIO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace aras_usb_imu
{
template <class ContainerAllocator>
struct aras_vio_
{
  typedef aras_vio_<ContainerAllocator> Type;

  aras_vio_()
    : header()
    , ts()
    , aux_encoder(0)  {
    }
  aras_vio_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ts(_alloc)
    , aux_encoder(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _ts_type;
  _ts_type ts;

   typedef int32_t _aux_encoder_type;
  _aux_encoder_type aux_encoder;





  typedef boost::shared_ptr< ::aras_usb_imu::aras_vio_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::aras_usb_imu::aras_vio_<ContainerAllocator> const> ConstPtr;

}; // struct aras_vio_

typedef ::aras_usb_imu::aras_vio_<std::allocator<void> > aras_vio;

typedef boost::shared_ptr< ::aras_usb_imu::aras_vio > aras_vioPtr;
typedef boost::shared_ptr< ::aras_usb_imu::aras_vio const> aras_vioConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::aras_usb_imu::aras_vio_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::aras_usb_imu::aras_vio_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::aras_usb_imu::aras_vio_<ContainerAllocator1> & lhs, const ::aras_usb_imu::aras_vio_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.ts == rhs.ts &&
    lhs.aux_encoder == rhs.aux_encoder;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::aras_usb_imu::aras_vio_<ContainerAllocator1> & lhs, const ::aras_usb_imu::aras_vio_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace aras_usb_imu

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::aras_usb_imu::aras_vio_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::aras_usb_imu::aras_vio_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aras_usb_imu::aras_vio_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::aras_usb_imu::aras_vio_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aras_usb_imu::aras_vio_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::aras_usb_imu::aras_vio_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::aras_usb_imu::aras_vio_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fefa939e2b3b93aed741afa88d1f56f5";
  }

  static const char* value(const ::aras_usb_imu::aras_vio_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfefa939e2b3b93aeULL;
  static const uint64_t static_value2 = 0xd741afa88d1f56f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::aras_usb_imu::aras_vio_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aras_usb_imu/aras_vio";
  }

  static const char* value(const ::aras_usb_imu::aras_vio_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::aras_usb_imu::aras_vio_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"int64[] ts\n"
"int32   aux_encoder\n"
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
;
  }

  static const char* value(const ::aras_usb_imu::aras_vio_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::aras_usb_imu::aras_vio_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ts);
      stream.next(m.aux_encoder);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct aras_vio_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::aras_usb_imu::aras_vio_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::aras_usb_imu::aras_vio_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ts[]" << std::endl;
    for (size_t i = 0; i < v.ts.size(); ++i)
    {
      s << indent << "  ts[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.ts[i]);
    }
    s << indent << "aux_encoder: ";
    Printer<int32_t>::stream(s, indent + "  ", v.aux_encoder);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARAS_USB_IMU_MESSAGE_ARAS_VIO_H

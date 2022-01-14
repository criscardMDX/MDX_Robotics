// Generated by gencpp from file beginner_tutorials/String_ModifyRequest.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_STRING_MODIFYREQUEST_H
#define BEGINNER_TUTORIALS_MESSAGE_STRING_MODIFYREQUEST_H


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
struct String_ModifyRequest_
{
  typedef String_ModifyRequest_<ContainerAllocator> Type;

  String_ModifyRequest_()
    : Message()  {
    }
  String_ModifyRequest_(const ContainerAllocator& _alloc)
    : Message(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Message_type;
  _Message_type Message;





  typedef boost::shared_ptr< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> const> ConstPtr;

}; // struct String_ModifyRequest_

typedef ::beginner_tutorials::String_ModifyRequest_<std::allocator<void> > String_ModifyRequest;

typedef boost::shared_ptr< ::beginner_tutorials::String_ModifyRequest > String_ModifyRequestPtr;
typedef boost::shared_ptr< ::beginner_tutorials::String_ModifyRequest const> String_ModifyRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator1> & lhs, const ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator2> & rhs)
{
  return lhs.Message == rhs.Message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator1> & lhs, const ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce8c0532094f50bab075d6707a3fc45b";
  }

  static const char* value(const ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce8c0532094f50baULL;
  static const uint64_t static_value2 = 0xb075d6707a3fc45bULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/String_ModifyRequest";
  }

  static const char* value(const ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Incoming parameter of the service.\n"
"string Message\n"
"\n"
;
  }

  static const char* value(const ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct String_ModifyRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::String_ModifyRequest_<ContainerAllocator>& v)
  {
    s << indent << "Message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_STRING_MODIFYREQUEST_H
; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude String_Modify-request.msg.html

(cl:defclass <String_Modify-request> (roslisp-msg-protocol:ros-message)
  ((Message
    :reader Message
    :initarg :Message
    :type cl:string
    :initform ""))
)

(cl:defclass String_Modify-request (<String_Modify-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <String_Modify-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'String_Modify-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<String_Modify-request> is deprecated: use beginner_tutorials-srv:String_Modify-request instead.")))

(cl:ensure-generic-function 'Message-val :lambda-list '(m))
(cl:defmethod Message-val ((m <String_Modify-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:Message-val is deprecated.  Use beginner_tutorials-srv:Message instead.")
  (Message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <String_Modify-request>) ostream)
  "Serializes a message object of type '<String_Modify-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <String_Modify-request>) istream)
  "Deserializes a message object of type '<String_Modify-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<String_Modify-request>)))
  "Returns string type for a service object of type '<String_Modify-request>"
  "beginner_tutorials/String_ModifyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'String_Modify-request)))
  "Returns string type for a service object of type 'String_Modify-request"
  "beginner_tutorials/String_ModifyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<String_Modify-request>)))
  "Returns md5sum for a message object of type '<String_Modify-request>"
  "ce8c0532094f50bab075d6707a3fc45b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'String_Modify-request)))
  "Returns md5sum for a message object of type 'String_Modify-request"
  "ce8c0532094f50bab075d6707a3fc45b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<String_Modify-request>)))
  "Returns full string definition for message of type '<String_Modify-request>"
  (cl:format cl:nil "# Incoming parameter of the service.~%string Message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'String_Modify-request)))
  "Returns full string definition for message of type 'String_Modify-request"
  (cl:format cl:nil "# Incoming parameter of the service.~%string Message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <String_Modify-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <String_Modify-request>))
  "Converts a ROS message object to a list"
  (cl:list 'String_Modify-request
    (cl:cons ':Message (Message msg))
))
;//! \htmlinclude String_Modify-response.msg.html

(cl:defclass <String_Modify-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass String_Modify-response (<String_Modify-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <String_Modify-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'String_Modify-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<String_Modify-response> is deprecated: use beginner_tutorials-srv:String_Modify-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <String_Modify-response>) ostream)
  "Serializes a message object of type '<String_Modify-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <String_Modify-response>) istream)
  "Deserializes a message object of type '<String_Modify-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<String_Modify-response>)))
  "Returns string type for a service object of type '<String_Modify-response>"
  "beginner_tutorials/String_ModifyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'String_Modify-response)))
  "Returns string type for a service object of type 'String_Modify-response"
  "beginner_tutorials/String_ModifyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<String_Modify-response>)))
  "Returns md5sum for a message object of type '<String_Modify-response>"
  "ce8c0532094f50bab075d6707a3fc45b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'String_Modify-response)))
  "Returns md5sum for a message object of type 'String_Modify-response"
  "ce8c0532094f50bab075d6707a3fc45b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<String_Modify-response>)))
  "Returns full string definition for message of type '<String_Modify-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'String_Modify-response)))
  "Returns full string definition for message of type 'String_Modify-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <String_Modify-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <String_Modify-response>))
  "Converts a ROS message object to a list"
  (cl:list 'String_Modify-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'String_Modify)))
  'String_Modify-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'String_Modify)))
  'String_Modify-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'String_Modify)))
  "Returns string type for a service object of type '<String_Modify>"
  "beginner_tutorials/String_Modify")
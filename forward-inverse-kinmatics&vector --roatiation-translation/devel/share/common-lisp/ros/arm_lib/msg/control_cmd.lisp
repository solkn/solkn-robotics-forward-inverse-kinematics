; Auto-generated. Do not edit!


(cl:in-package arm_lib-msg)


;//! \htmlinclude control_cmd.msg.html

(cl:defclass <control_cmd> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform ""))
)

(cl:defclass control_cmd (<control_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-msg:<control_cmd> is deprecated: use arm_lib-msg:control_cmd instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <control_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-msg:cmd-val is deprecated.  Use arm_lib-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_cmd>) ostream)
  "Serializes a message object of type '<control_cmd>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_cmd>) istream)
  "Deserializes a message object of type '<control_cmd>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_cmd>)))
  "Returns string type for a message object of type '<control_cmd>"
  "arm_lib/control_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_cmd)))
  "Returns string type for a message object of type 'control_cmd"
  "arm_lib/control_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_cmd>)))
  "Returns md5sum for a message object of type '<control_cmd>"
  "43a54fa49066cddcf148717d9d4a6353")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_cmd)))
  "Returns md5sum for a message object of type 'control_cmd"
  "43a54fa49066cddcf148717d9d4a6353")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_cmd>)))
  "Returns full string definition for message of type '<control_cmd>"
  (cl:format cl:nil "string cmd~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_cmd)))
  "Returns full string definition for message of type 'control_cmd"
  (cl:format cl:nil "string cmd~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_cmd>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'control_cmd
    (cl:cons ':cmd (cmd msg))
))

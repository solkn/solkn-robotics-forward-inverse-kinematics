; Auto-generated. Do not edit!


(cl:in-package arm_lib-srv)


;//! \htmlinclude FK-request.msg.html

(cl:defclass <FK-request> (roslisp-msg-protocol:ros-message)
  ((joint_angles
    :reader joint_angles
    :initarg :joint_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FK-request (<FK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-srv:<FK-request> is deprecated: use arm_lib-srv:FK-request instead.")))

(cl:ensure-generic-function 'joint_angles-val :lambda-list '(m))
(cl:defmethod joint_angles-val ((m <FK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:joint_angles-val is deprecated.  Use arm_lib-srv:joint_angles instead.")
  (joint_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FK-request>) ostream)
  "Serializes a message object of type '<FK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FK-request>) istream)
  "Deserializes a message object of type '<FK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FK-request>)))
  "Returns string type for a service object of type '<FK-request>"
  "arm_lib/FKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FK-request)))
  "Returns string type for a service object of type 'FK-request"
  "arm_lib/FKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FK-request>)))
  "Returns md5sum for a message object of type '<FK-request>"
  "5bfba77d79999ef10d63e1c6532bc662")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FK-request)))
  "Returns md5sum for a message object of type 'FK-request"
  "5bfba77d79999ef10d63e1c6532bc662")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FK-request>)))
  "Returns full string definition for message of type '<FK-request>"
  (cl:format cl:nil "float64[] joint_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FK-request)))
  "Returns full string definition for message of type 'FK-request"
  (cl:format cl:nil "float64[] joint_angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FK-request
    (cl:cons ':joint_angles (joint_angles msg))
))
;//! \htmlinclude FK-response.msg.html

(cl:defclass <FK-response> (roslisp-msg-protocol:ros-message)
  ((actuator_pose
    :reader actuator_pose
    :initarg :actuator_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FK-response (<FK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_lib-srv:<FK-response> is deprecated: use arm_lib-srv:FK-response instead.")))

(cl:ensure-generic-function 'actuator_pose-val :lambda-list '(m))
(cl:defmethod actuator_pose-val ((m <FK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_lib-srv:actuator_pose-val is deprecated.  Use arm_lib-srv:actuator_pose instead.")
  (actuator_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FK-response>) ostream)
  "Serializes a message object of type '<FK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actuator_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'actuator_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FK-response>) istream)
  "Deserializes a message object of type '<FK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actuator_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actuator_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FK-response>)))
  "Returns string type for a service object of type '<FK-response>"
  "arm_lib/FKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FK-response)))
  "Returns string type for a service object of type 'FK-response"
  "arm_lib/FKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FK-response>)))
  "Returns md5sum for a message object of type '<FK-response>"
  "5bfba77d79999ef10d63e1c6532bc662")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FK-response)))
  "Returns md5sum for a message object of type 'FK-response"
  "5bfba77d79999ef10d63e1c6532bc662")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FK-response>)))
  "Returns full string definition for message of type '<FK-response>"
  (cl:format cl:nil "float64[] actuator_pose~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FK-response)))
  "Returns full string definition for message of type 'FK-response"
  (cl:format cl:nil "float64[] actuator_pose~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actuator_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FK-response
    (cl:cons ':actuator_pose (actuator_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FK)))
  'FK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FK)))
  'FK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FK)))
  "Returns string type for a service object of type '<FK>"
  "arm_lib/FK")
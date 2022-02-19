; Auto-generated. Do not edit!


(cl:in-package three_arm_gazebo-srv)


;//! \htmlinclude AngleInput-request.msg.html

(cl:defclass <AngleInput-request> (roslisp-msg-protocol:ros-message)
  ((jointOneAngle
    :reader jointOneAngle
    :initarg :jointOneAngle
    :type cl:float
    :initform 0.0)
   (jointTwoAngle
    :reader jointTwoAngle
    :initarg :jointTwoAngle
    :type cl:float
    :initform 0.0)
   (jointThreeAngle
    :reader jointThreeAngle
    :initarg :jointThreeAngle
    :type cl:float
    :initform 0.0)
   (jointFourAngle
    :reader jointFourAngle
    :initarg :jointFourAngle
    :type cl:float
    :initform 0.0))
)

(cl:defclass AngleInput-request (<AngleInput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AngleInput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AngleInput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name three_arm_gazebo-srv:<AngleInput-request> is deprecated: use three_arm_gazebo-srv:AngleInput-request instead.")))

(cl:ensure-generic-function 'jointOneAngle-val :lambda-list '(m))
(cl:defmethod jointOneAngle-val ((m <AngleInput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader three_arm_gazebo-srv:jointOneAngle-val is deprecated.  Use three_arm_gazebo-srv:jointOneAngle instead.")
  (jointOneAngle m))

(cl:ensure-generic-function 'jointTwoAngle-val :lambda-list '(m))
(cl:defmethod jointTwoAngle-val ((m <AngleInput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader three_arm_gazebo-srv:jointTwoAngle-val is deprecated.  Use three_arm_gazebo-srv:jointTwoAngle instead.")
  (jointTwoAngle m))

(cl:ensure-generic-function 'jointThreeAngle-val :lambda-list '(m))
(cl:defmethod jointThreeAngle-val ((m <AngleInput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader three_arm_gazebo-srv:jointThreeAngle-val is deprecated.  Use three_arm_gazebo-srv:jointThreeAngle instead.")
  (jointThreeAngle m))

(cl:ensure-generic-function 'jointFourAngle-val :lambda-list '(m))
(cl:defmethod jointFourAngle-val ((m <AngleInput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader three_arm_gazebo-srv:jointFourAngle-val is deprecated.  Use three_arm_gazebo-srv:jointFourAngle instead.")
  (jointFourAngle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AngleInput-request>) ostream)
  "Serializes a message object of type '<AngleInput-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'jointOneAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'jointTwoAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'jointThreeAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'jointFourAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AngleInput-request>) istream)
  "Deserializes a message object of type '<AngleInput-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jointOneAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jointTwoAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jointThreeAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jointFourAngle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AngleInput-request>)))
  "Returns string type for a service object of type '<AngleInput-request>"
  "three_arm_gazebo/AngleInputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AngleInput-request)))
  "Returns string type for a service object of type 'AngleInput-request"
  "three_arm_gazebo/AngleInputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AngleInput-request>)))
  "Returns md5sum for a message object of type '<AngleInput-request>"
  "7b58cc9c6acfc74729d0ca9f99d93c5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AngleInput-request)))
  "Returns md5sum for a message object of type 'AngleInput-request"
  "7b58cc9c6acfc74729d0ca9f99d93c5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AngleInput-request>)))
  "Returns full string definition for message of type '<AngleInput-request>"
  (cl:format cl:nil "float64 jointOneAngle~%float64 jointTwoAngle~%float64 jointThreeAngle~%float64 jointFourAngle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AngleInput-request)))
  "Returns full string definition for message of type 'AngleInput-request"
  (cl:format cl:nil "float64 jointOneAngle~%float64 jointTwoAngle~%float64 jointThreeAngle~%float64 jointFourAngle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AngleInput-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AngleInput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AngleInput-request
    (cl:cons ':jointOneAngle (jointOneAngle msg))
    (cl:cons ':jointTwoAngle (jointTwoAngle msg))
    (cl:cons ':jointThreeAngle (jointThreeAngle msg))
    (cl:cons ':jointFourAngle (jointFourAngle msg))
))
;//! \htmlinclude AngleInput-response.msg.html

(cl:defclass <AngleInput-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AngleInput-response (<AngleInput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AngleInput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AngleInput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name three_arm_gazebo-srv:<AngleInput-response> is deprecated: use three_arm_gazebo-srv:AngleInput-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AngleInput-response>) ostream)
  "Serializes a message object of type '<AngleInput-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AngleInput-response>) istream)
  "Deserializes a message object of type '<AngleInput-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AngleInput-response>)))
  "Returns string type for a service object of type '<AngleInput-response>"
  "three_arm_gazebo/AngleInputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AngleInput-response)))
  "Returns string type for a service object of type 'AngleInput-response"
  "three_arm_gazebo/AngleInputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AngleInput-response>)))
  "Returns md5sum for a message object of type '<AngleInput-response>"
  "7b58cc9c6acfc74729d0ca9f99d93c5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AngleInput-response)))
  "Returns md5sum for a message object of type 'AngleInput-response"
  "7b58cc9c6acfc74729d0ca9f99d93c5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AngleInput-response>)))
  "Returns full string definition for message of type '<AngleInput-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AngleInput-response)))
  "Returns full string definition for message of type 'AngleInput-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AngleInput-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AngleInput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AngleInput-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AngleInput)))
  'AngleInput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AngleInput)))
  'AngleInput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AngleInput)))
  "Returns string type for a service object of type '<AngleInput>"
  "three_arm_gazebo/AngleInput")
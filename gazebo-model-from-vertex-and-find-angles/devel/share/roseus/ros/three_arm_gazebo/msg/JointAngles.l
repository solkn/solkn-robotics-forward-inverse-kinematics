;; Auto-generated. Do not edit!


(when (boundp 'three_arm_gazebo::JointAngles)
  (if (not (find-package "THREE_ARM_GAZEBO"))
    (make-package "THREE_ARM_GAZEBO"))
  (shadow 'JointAngles (find-package "THREE_ARM_GAZEBO")))
(unless (find-package "THREE_ARM_GAZEBO::JOINTANGLES")
  (make-package "THREE_ARM_GAZEBO::JOINTANGLES"))

(in-package "ROS")
;;//! \htmlinclude JointAngles.msg.html


(defclass three_arm_gazebo::JointAngles
  :super ros::object
  :slots (_jointOneAngle _jointTwoAngle _jointThreeAngle _jointFourAngle ))

(defmethod three_arm_gazebo::JointAngles
  (:init
   (&key
    ((:jointOneAngle __jointOneAngle) 0.0)
    ((:jointTwoAngle __jointTwoAngle) 0.0)
    ((:jointThreeAngle __jointThreeAngle) 0.0)
    ((:jointFourAngle __jointFourAngle) 0.0)
    )
   (send-super :init)
   (setq _jointOneAngle (float __jointOneAngle))
   (setq _jointTwoAngle (float __jointTwoAngle))
   (setq _jointThreeAngle (float __jointThreeAngle))
   (setq _jointFourAngle (float __jointFourAngle))
   self)
  (:jointOneAngle
   (&optional __jointOneAngle)
   (if __jointOneAngle (setq _jointOneAngle __jointOneAngle)) _jointOneAngle)
  (:jointTwoAngle
   (&optional __jointTwoAngle)
   (if __jointTwoAngle (setq _jointTwoAngle __jointTwoAngle)) _jointTwoAngle)
  (:jointThreeAngle
   (&optional __jointThreeAngle)
   (if __jointThreeAngle (setq _jointThreeAngle __jointThreeAngle)) _jointThreeAngle)
  (:jointFourAngle
   (&optional __jointFourAngle)
   (if __jointFourAngle (setq _jointFourAngle __jointFourAngle)) _jointFourAngle)
  (:serialization-length
   ()
   (+
    ;; float64 _jointOneAngle
    8
    ;; float64 _jointTwoAngle
    8
    ;; float64 _jointThreeAngle
    8
    ;; float64 _jointFourAngle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _jointOneAngle
       (sys::poke _jointOneAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _jointTwoAngle
       (sys::poke _jointTwoAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _jointThreeAngle
       (sys::poke _jointThreeAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _jointFourAngle
       (sys::poke _jointFourAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _jointOneAngle
     (setq _jointOneAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _jointTwoAngle
     (setq _jointTwoAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _jointThreeAngle
     (setq _jointThreeAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _jointFourAngle
     (setq _jointFourAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get three_arm_gazebo::JointAngles :md5sum-) "7b58cc9c6acfc74729d0ca9f99d93c5a")
(setf (get three_arm_gazebo::JointAngles :datatype-) "three_arm_gazebo/JointAngles")
(setf (get three_arm_gazebo::JointAngles :definition-)
      "float64 jointOneAngle
float64 jointTwoAngle
float64 jointThreeAngle
float64 jointFourAngle
")



(provide :three_arm_gazebo/JointAngles "7b58cc9c6acfc74729d0ca9f99d93c5a")



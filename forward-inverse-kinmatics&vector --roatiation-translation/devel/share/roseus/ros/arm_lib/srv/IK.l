;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::IK)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'IK (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::IK")
  (make-package "ARM_LIB::IK"))
(unless (find-package "ARM_LIB::IKREQUEST")
  (make-package "ARM_LIB::IKREQUEST"))
(unless (find-package "ARM_LIB::IKRESPONSE")
  (make-package "ARM_LIB::IKRESPONSE"))

(in-package "ROS")





(defclass arm_lib::IKRequest
  :super ros::object
  :slots (_actuator_pose _joint_positions ))

(defmethod arm_lib::IKRequest
  (:init
   (&key
    ((:actuator_pose __actuator_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_positions __joint_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _actuator_pose __actuator_pose)
   (setq _joint_positions __joint_positions)
   self)
  (:actuator_pose
   (&optional __actuator_pose)
   (if __actuator_pose (setq _actuator_pose __actuator_pose)) _actuator_pose)
  (:joint_positions
   (&optional __joint_positions)
   (if __joint_positions (setq _joint_positions __joint_positions)) _joint_positions)
  (:serialization-length
   ()
   (+
    ;; float64[] _actuator_pose
    (* 8    (length _actuator_pose)) 4
    ;; float64[] _joint_positions
    (* 8    (length _joint_positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _actuator_pose
     (write-long (length _actuator_pose) s)
     (dotimes (i (length _actuator_pose))
       (sys::poke (elt _actuator_pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_positions
     (write-long (length _joint_positions) s)
     (dotimes (i (length _joint_positions))
       (sys::poke (elt _joint_positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _actuator_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuator_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actuator_pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_lib::IKResponse
  :super ros::object
  :slots (_new_angles ))

(defmethod arm_lib::IKResponse
  (:init
   (&key
    ((:new_angles __new_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _new_angles __new_angles)
   self)
  (:new_angles
   (&optional __new_angles)
   (if __new_angles (setq _new_angles __new_angles)) _new_angles)
  (:serialization-length
   ()
   (+
    ;; float64[] _new_angles
    (* 8    (length _new_angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _new_angles
     (write-long (length _new_angles) s)
     (dotimes (i (length _new_angles))
       (sys::poke (elt _new_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _new_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _new_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _new_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_lib::IK
  :super ros::object
  :slots ())

(setf (get arm_lib::IK :md5sum-) "1ddfd34f87b4b1bd0603440253b8c447")
(setf (get arm_lib::IK :datatype-) "arm_lib/IK")
(setf (get arm_lib::IK :request) arm_lib::IKRequest)
(setf (get arm_lib::IK :response) arm_lib::IKResponse)

(defmethod arm_lib::IKRequest
  (:response () (instance arm_lib::IKResponse :init)))

(setf (get arm_lib::IKRequest :md5sum-) "1ddfd34f87b4b1bd0603440253b8c447")
(setf (get arm_lib::IKRequest :datatype-) "arm_lib/IKRequest")
(setf (get arm_lib::IKRequest :definition-)
      "float64[] actuator_pose
float64[] joint_positions
---
float64[] new_angles

")

(setf (get arm_lib::IKResponse :md5sum-) "1ddfd34f87b4b1bd0603440253b8c447")
(setf (get arm_lib::IKResponse :datatype-) "arm_lib/IKResponse")
(setf (get arm_lib::IKResponse :definition-)
      "float64[] actuator_pose
float64[] joint_positions
---
float64[] new_angles

")



(provide :arm_lib/IK "1ddfd34f87b4b1bd0603440253b8c447")



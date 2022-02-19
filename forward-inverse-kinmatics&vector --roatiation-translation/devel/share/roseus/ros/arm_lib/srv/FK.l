;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::FK)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'FK (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::FK")
  (make-package "ARM_LIB::FK"))
(unless (find-package "ARM_LIB::FKREQUEST")
  (make-package "ARM_LIB::FKREQUEST"))
(unless (find-package "ARM_LIB::FKRESPONSE")
  (make-package "ARM_LIB::FKRESPONSE"))

(in-package "ROS")





(defclass arm_lib::FKRequest
  :super ros::object
  :slots (_joint_angles ))

(defmethod arm_lib::FKRequest
  (:init
   (&key
    ((:joint_angles __joint_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   self)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_angles
    (* 8    (length _joint_angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_angles
     (write-long (length _joint_angles) s)
     (dotimes (i (length _joint_angles))
       (sys::poke (elt _joint_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_lib::FKResponse
  :super ros::object
  :slots (_actuator_pose ))

(defmethod arm_lib::FKResponse
  (:init
   (&key
    ((:actuator_pose __actuator_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _actuator_pose __actuator_pose)
   self)
  (:actuator_pose
   (&optional __actuator_pose)
   (if __actuator_pose (setq _actuator_pose __actuator_pose)) _actuator_pose)
  (:serialization-length
   ()
   (+
    ;; float64[] _actuator_pose
    (* 8    (length _actuator_pose)) 4
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
   ;;
   self)
  )

(defclass arm_lib::FK
  :super ros::object
  :slots ())

(setf (get arm_lib::FK :md5sum-) "5bfba77d79999ef10d63e1c6532bc662")
(setf (get arm_lib::FK :datatype-) "arm_lib/FK")
(setf (get arm_lib::FK :request) arm_lib::FKRequest)
(setf (get arm_lib::FK :response) arm_lib::FKResponse)

(defmethod arm_lib::FKRequest
  (:response () (instance arm_lib::FKResponse :init)))

(setf (get arm_lib::FKRequest :md5sum-) "5bfba77d79999ef10d63e1c6532bc662")
(setf (get arm_lib::FKRequest :datatype-) "arm_lib/FKRequest")
(setf (get arm_lib::FKRequest :definition-)
      "float64[] joint_angles
---
float64[] actuator_pose

")

(setf (get arm_lib::FKResponse :md5sum-) "5bfba77d79999ef10d63e1c6532bc662")
(setf (get arm_lib::FKResponse :datatype-) "arm_lib/FKResponse")
(setf (get arm_lib::FKResponse :definition-)
      "float64[] joint_angles
---
float64[] actuator_pose

")



(provide :arm_lib/FK "5bfba77d79999ef10d63e1c6532bc662")



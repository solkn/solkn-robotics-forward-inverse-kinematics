;; Auto-generated. Do not edit!


(when (boundp 'arm_lib::control_cmd)
  (if (not (find-package "ARM_LIB"))
    (make-package "ARM_LIB"))
  (shadow 'control_cmd (find-package "ARM_LIB")))
(unless (find-package "ARM_LIB::CONTROL_CMD")
  (make-package "ARM_LIB::CONTROL_CMD"))

(in-package "ROS")
;;//! \htmlinclude control_cmd.msg.html


(defclass arm_lib::control_cmd
  :super ros::object
  :slots (_cmd ))

(defmethod arm_lib::control_cmd
  (:init
   (&key
    ((:cmd __cmd) "")
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get arm_lib::control_cmd :md5sum-) "43a54fa49066cddcf148717d9d4a6353")
(setf (get arm_lib::control_cmd :datatype-) "arm_lib/control_cmd")
(setf (get arm_lib::control_cmd :definition-)
      "string cmd
")



(provide :arm_lib/control_cmd "43a54fa49066cddcf148717d9d4a6353")



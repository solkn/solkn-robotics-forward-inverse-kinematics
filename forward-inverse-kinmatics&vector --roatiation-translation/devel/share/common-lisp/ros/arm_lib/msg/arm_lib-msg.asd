
(cl:in-package :asdf)

(defsystem "arm_lib-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointPose" :depends-on ("_package_JointPose"))
    (:file "_package_JointPose" :depends-on ("_package"))
    (:file "actuator_pos" :depends-on ("_package_actuator_pos"))
    (:file "_package_actuator_pos" :depends-on ("_package"))
    (:file "arm_joint_angles" :depends-on ("_package_arm_joint_angles"))
    (:file "_package_arm_joint_angles" :depends-on ("_package"))
    (:file "control_cmd" :depends-on ("_package_control_cmd"))
    (:file "_package_control_cmd" :depends-on ("_package"))
    (:file "input" :depends-on ("_package_input"))
    (:file "_package_input" :depends-on ("_package"))
    (:file "output" :depends-on ("_package_output"))
    (:file "_package_output" :depends-on ("_package"))
  ))
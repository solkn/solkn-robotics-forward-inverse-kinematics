
(cl:in-package :asdf)

(defsystem "three_arm_gazebo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AngleInput" :depends-on ("_package_AngleInput"))
    (:file "_package_AngleInput" :depends-on ("_package"))
  ))
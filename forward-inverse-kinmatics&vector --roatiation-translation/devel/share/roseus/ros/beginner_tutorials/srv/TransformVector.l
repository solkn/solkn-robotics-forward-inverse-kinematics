;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::TransformVector)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'TransformVector (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::TRANSFORMVECTOR")
  (make-package "BEGINNER_TUTORIALS::TRANSFORMVECTOR"))
(unless (find-package "BEGINNER_TUTORIALS::TRANSFORMVECTORREQUEST")
  (make-package "BEGINNER_TUTORIALS::TRANSFORMVECTORREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::TRANSFORMVECTORRESPONSE")
  (make-package "BEGINNER_TUTORIALS::TRANSFORMVECTORRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::TransformVectorRequest
  :super ros::object
  :slots (_x _y _z _g _a _b _c ))

(defmethod beginner_tutorials::TransformVectorRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:g __g) 0.0)
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _g (float __g))
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _g
    8
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; float64 _c
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _g
       (sys::poke _g (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c
       (sys::poke _c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _g
     (setq _g (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c
     (setq _c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass beginner_tutorials::TransformVectorResponse
  :super ros::object
  :slots ())

(defmethod beginner_tutorials::TransformVectorResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass beginner_tutorials::TransformVector
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::TransformVector :md5sum-) "ac72d28376c7170353aa1485b4f8e06a")
(setf (get beginner_tutorials::TransformVector :datatype-) "beginner_tutorials/TransformVector")
(setf (get beginner_tutorials::TransformVector :request) beginner_tutorials::TransformVectorRequest)
(setf (get beginner_tutorials::TransformVector :response) beginner_tutorials::TransformVectorResponse)

(defmethod beginner_tutorials::TransformVectorRequest
  (:response () (instance beginner_tutorials::TransformVectorResponse :init)))

(setf (get beginner_tutorials::TransformVectorRequest :md5sum-) "ac72d28376c7170353aa1485b4f8e06a")
(setf (get beginner_tutorials::TransformVectorRequest :datatype-) "beginner_tutorials/TransformVectorRequest")
(setf (get beginner_tutorials::TransformVectorRequest :definition-)
      "float64 x
float64 y
float64 z
float64 g
float64 a
float64 b
float64 c

---
")

(setf (get beginner_tutorials::TransformVectorResponse :md5sum-) "ac72d28376c7170353aa1485b4f8e06a")
(setf (get beginner_tutorials::TransformVectorResponse :datatype-) "beginner_tutorials/TransformVectorResponse")
(setf (get beginner_tutorials::TransformVectorResponse :definition-)
      "float64 x
float64 y
float64 z
float64 g
float64 a
float64 b
float64 c

---
")



(provide :beginner_tutorials/TransformVector "ac72d28376c7170353aa1485b4f8e06a")



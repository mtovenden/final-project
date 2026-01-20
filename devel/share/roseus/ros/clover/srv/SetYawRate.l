;; Auto-generated. Do not edit!


(when (boundp 'clover::SetYawRate)
  (if (not (find-package "CLOVER"))
    (make-package "CLOVER"))
  (shadow 'SetYawRate (find-package "CLOVER")))
(unless (find-package "CLOVER::SETYAWRATE")
  (make-package "CLOVER::SETYAWRATE"))
(unless (find-package "CLOVER::SETYAWRATEREQUEST")
  (make-package "CLOVER::SETYAWRATEREQUEST"))
(unless (find-package "CLOVER::SETYAWRATERESPONSE")
  (make-package "CLOVER::SETYAWRATERESPONSE"))

(in-package "ROS")





(defclass clover::SetYawRateRequest
  :super ros::object
  :slots (_yaw_rate ))

(defmethod clover::SetYawRateRequest
  (:init
   (&key
    ((:yaw_rate __yaw_rate) 0.0)
    )
   (send-super :init)
   (setq _yaw_rate (float __yaw_rate))
   self)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:serialization-length
   ()
   (+
    ;; float32 _yaw_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass clover::SetYawRateResponse
  :super ros::object
  :slots (_success _message ))

(defmethod clover::SetYawRateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass clover::SetYawRate
  :super ros::object
  :slots ())

(setf (get clover::SetYawRate :md5sum-) "e84dd53db872d0c7a7d675a20e28c95f")
(setf (get clover::SetYawRate :datatype-) "clover/SetYawRate")
(setf (get clover::SetYawRate :request) clover::SetYawRateRequest)
(setf (get clover::SetYawRate :response) clover::SetYawRateResponse)

(defmethod clover::SetYawRateRequest
  (:response () (instance clover::SetYawRateResponse :init)))

(setf (get clover::SetYawRateRequest :md5sum-) "e84dd53db872d0c7a7d675a20e28c95f")
(setf (get clover::SetYawRateRequest :datatype-) "clover/SetYawRateRequest")
(setf (get clover::SetYawRateRequest :definition-)
      "float32 yaw_rate
---
bool success
string message

")

(setf (get clover::SetYawRateResponse :md5sum-) "e84dd53db872d0c7a7d675a20e28c95f")
(setf (get clover::SetYawRateResponse :datatype-) "clover/SetYawRateResponse")
(setf (get clover::SetYawRateResponse :definition-)
      "float32 yaw_rate
---
bool success
string message

")



(provide :clover/SetYawRate "e84dd53db872d0c7a7d675a20e28c95f")



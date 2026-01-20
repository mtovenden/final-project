;; Auto-generated. Do not edit!


(when (boundp 'clover::SetAltitude)
  (if (not (find-package "CLOVER"))
    (make-package "CLOVER"))
  (shadow 'SetAltitude (find-package "CLOVER")))
(unless (find-package "CLOVER::SETALTITUDE")
  (make-package "CLOVER::SETALTITUDE"))
(unless (find-package "CLOVER::SETALTITUDEREQUEST")
  (make-package "CLOVER::SETALTITUDEREQUEST"))
(unless (find-package "CLOVER::SETALTITUDERESPONSE")
  (make-package "CLOVER::SETALTITUDERESPONSE"))

(in-package "ROS")





(defclass clover::SetAltitudeRequest
  :super ros::object
  :slots (_z _frame_id ))

(defmethod clover::SetAltitudeRequest
  (:init
   (&key
    ((:z __z) 0.0)
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _z (float __z))
   (setq _frame_id (string __frame_id))
   self)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; float32 _z
    4
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass clover::SetAltitudeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod clover::SetAltitudeResponse
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

(defclass clover::SetAltitude
  :super ros::object
  :slots ())

(setf (get clover::SetAltitude :md5sum-) "3156c628a6aee1d23a3fc3177b7fa0dd")
(setf (get clover::SetAltitude :datatype-) "clover/SetAltitude")
(setf (get clover::SetAltitude :request) clover::SetAltitudeRequest)
(setf (get clover::SetAltitude :response) clover::SetAltitudeResponse)

(defmethod clover::SetAltitudeRequest
  (:response () (instance clover::SetAltitudeResponse :init)))

(setf (get clover::SetAltitudeRequest :md5sum-) "3156c628a6aee1d23a3fc3177b7fa0dd")
(setf (get clover::SetAltitudeRequest :datatype-) "clover/SetAltitudeRequest")
(setf (get clover::SetAltitudeRequest :definition-)
      "float32 z
string frame_id
---
bool success
string message

")

(setf (get clover::SetAltitudeResponse :md5sum-) "3156c628a6aee1d23a3fc3177b7fa0dd")
(setf (get clover::SetAltitudeResponse :datatype-) "clover/SetAltitudeResponse")
(setf (get clover::SetAltitudeResponse :definition-)
      "float32 z
string frame_id
---
bool success
string message

")



(provide :clover/SetAltitude "3156c628a6aee1d23a3fc3177b7fa0dd")



;; Auto-generated. Do not edit!


(when (boundp 'clover::State)
  (if (not (find-package "CLOVER"))
    (make-package "CLOVER"))
  (shadow 'State (find-package "CLOVER")))
(unless (find-package "CLOVER::STATE")
  (make-package "CLOVER::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(intern "*MODE_NONE*" (find-package "CLOVER::STATE"))
(shadow '*MODE_NONE* (find-package "CLOVER::STATE"))
(defconstant clover::State::*MODE_NONE* 0)
(intern "*MODE_NAVIGATE*" (find-package "CLOVER::STATE"))
(shadow '*MODE_NAVIGATE* (find-package "CLOVER::STATE"))
(defconstant clover::State::*MODE_NAVIGATE* 1)
(intern "*MODE_NAVIGATE_GLOBAL*" (find-package "CLOVER::STATE"))
(shadow '*MODE_NAVIGATE_GLOBAL* (find-package "CLOVER::STATE"))
(defconstant clover::State::*MODE_NAVIGATE_GLOBAL* 2)
(intern "*MODE_POSITION*" (find-package "CLOVER::STATE"))
(shadow '*MODE_POSITION* (find-package "CLOVER::STATE"))
(defconstant clover::State::*MODE_POSITION* 3)
(intern "*MODE_VELOCITY*" (find-package "CLOVER::STATE"))
(shadow '*MODE_VELOCITY* (find-package "CLOVER::STATE"))
(defconstant clover::State::*MODE_VELOCITY* 4)
(intern "*MODE_ATTITUDE*" (find-package "CLOVER::STATE"))
(shadow '*MODE_ATTITUDE* (find-package "CLOVER::STATE"))
(defconstant clover::State::*MODE_ATTITUDE* 5)
(intern "*MODE_RATES*" (find-package "CLOVER::STATE"))
(shadow '*MODE_RATES* (find-package "CLOVER::STATE"))
(defconstant clover::State::*MODE_RATES* 6)
(intern "*YAW_MODE_YAW*" (find-package "CLOVER::STATE"))
(shadow '*YAW_MODE_YAW* (find-package "CLOVER::STATE"))
(defconstant clover::State::*YAW_MODE_YAW* 0)
(intern "*YAW_MODE_YAW_RATE*" (find-package "CLOVER::STATE"))
(shadow '*YAW_MODE_YAW_RATE* (find-package "CLOVER::STATE"))
(defconstant clover::State::*YAW_MODE_YAW_RATE* 1)
(intern "*YAW_MODE_YAW_TOWARDS*" (find-package "CLOVER::STATE"))
(shadow '*YAW_MODE_YAW_TOWARDS* (find-package "CLOVER::STATE"))
(defconstant clover::State::*YAW_MODE_YAW_TOWARDS* 2)

(defun clover::State-to-symbol (const)
  (cond
        ((= const 0) 'clover::State::*MODE_NONE*)
        ((= const 1) 'clover::State::*MODE_NAVIGATE*)
        ((= const 2) 'clover::State::*MODE_NAVIGATE_GLOBAL*)
        ((= const 3) 'clover::State::*MODE_POSITION*)
        ((= const 4) 'clover::State::*MODE_VELOCITY*)
        ((= const 5) 'clover::State::*MODE_ATTITUDE*)
        ((= const 6) 'clover::State::*MODE_RATES*)
        ((= const 0) 'clover::State::*YAW_MODE_YAW*)
        ((= const 1) 'clover::State::*YAW_MODE_YAW_RATE*)
        ((= const 2) 'clover::State::*YAW_MODE_YAW_TOWARDS*)
        (t nil)))

(defclass clover::State
  :super ros::object
  :slots (_mode _yaw_mode _x _y _z _speed _lat _lon _vx _vy _vz _roll _pitch _yaw _roll_rate _pitch_rate _yaw_rate _thrust _xy_frame_id _z_frame_id _yaw_frame_id ))

(defmethod clover::State
  (:init
   (&key
    ((:mode __mode) 0)
    ((:yaw_mode __yaw_mode) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:speed __speed) 0.0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:roll_rate __roll_rate) 0.0)
    ((:pitch_rate __pitch_rate) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:thrust __thrust) 0.0)
    ((:xy_frame_id __xy_frame_id) "")
    ((:z_frame_id __z_frame_id) "")
    ((:yaw_frame_id __yaw_frame_id) "")
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _yaw_mode (round __yaw_mode))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _speed (float __speed))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _roll_rate (float __roll_rate))
   (setq _pitch_rate (float __pitch_rate))
   (setq _yaw_rate (float __yaw_rate))
   (setq _thrust (float __thrust))
   (setq _xy_frame_id (string __xy_frame_id))
   (setq _z_frame_id (string __z_frame_id))
   (setq _yaw_frame_id (string __yaw_frame_id))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:yaw_mode
   (&optional __yaw_mode)
   (if __yaw_mode (setq _yaw_mode __yaw_mode)) _yaw_mode)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:roll_rate
   (&optional __roll_rate)
   (if __roll_rate (setq _roll_rate __roll_rate)) _roll_rate)
  (:pitch_rate
   (&optional __pitch_rate)
   (if __pitch_rate (setq _pitch_rate __pitch_rate)) _pitch_rate)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:xy_frame_id
   (&optional __xy_frame_id)
   (if __xy_frame_id (setq _xy_frame_id __xy_frame_id)) _xy_frame_id)
  (:z_frame_id
   (&optional __z_frame_id)
   (if __z_frame_id (setq _z_frame_id __z_frame_id)) _z_frame_id)
  (:yaw_frame_id
   (&optional __yaw_frame_id)
   (if __yaw_frame_id (setq _yaw_frame_id __yaw_frame_id)) _yaw_frame_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _yaw_mode
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _speed
    4
    ;; float32 _lat
    4
    ;; float32 _lon
    4
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vz
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _roll_rate
    4
    ;; float32 _pitch_rate
    4
    ;; float32 _yaw_rate
    4
    ;; float32 _thrust
    4
    ;; string _xy_frame_id
    4 (length _xy_frame_id)
    ;; string _z_frame_id
    4 (length _z_frame_id)
    ;; string _yaw_frame_id
    4 (length _yaw_frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _yaw_mode
       (write-byte _yaw_mode s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll_rate
       (sys::poke _roll_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_rate
       (sys::poke _pitch_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _xy_frame_id
       (write-long (length _xy_frame_id) s) (princ _xy_frame_id s)
     ;; string _z_frame_id
       (write-long (length _z_frame_id) s) (princ _z_frame_id s)
     ;; string _yaw_frame_id
       (write-long (length _yaw_frame_id) s) (princ _yaw_frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _yaw_mode
     (setq _yaw_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lat
     (setq _lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lon
     (setq _lon (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz
     (setq _vz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll_rate
     (setq _roll_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_rate
     (setq _pitch_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _thrust
     (setq _thrust (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _xy_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _xy_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _z_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _z_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _yaw_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _yaw_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get clover::State :md5sum-) "d9e0ec21a3e363877a9dee3df8999bd1")
(setf (get clover::State :datatype-) "clover/State")
(setf (get clover::State :definition-)
      "uint8 MODE_NONE = 0
uint8 MODE_NAVIGATE = 1
uint8 MODE_NAVIGATE_GLOBAL = 2
uint8 MODE_POSITION = 3
uint8 MODE_VELOCITY = 4
uint8 MODE_ATTITUDE = 5
uint8 MODE_RATES = 6

uint8 YAW_MODE_YAW = 0
uint8 YAW_MODE_YAW_RATE = 1
uint8 YAW_MODE_YAW_TOWARDS = 2

# type of offboard control
uint8 mode
uint8 yaw_mode

# targets
float32 x
float32 y
float32 z
float32 speed
float32 lat
float32 lon
float32 vx
float32 vy
float32 vz
float32 roll
float32 pitch
float32 yaw
float32 roll_rate
float32 pitch_rate
float32 yaw_rate
float32 thrust

# frames of reference
string xy_frame_id
string z_frame_id
string yaw_frame_id

")



(provide :clover/State "d9e0ec21a3e363877a9dee3df8999bd1")



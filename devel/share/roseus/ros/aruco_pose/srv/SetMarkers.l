;; Auto-generated. Do not edit!


(when (boundp 'aruco_pose::SetMarkers)
  (if (not (find-package "ARUCO_POSE"))
    (make-package "ARUCO_POSE"))
  (shadow 'SetMarkers (find-package "ARUCO_POSE")))
(unless (find-package "ARUCO_POSE::SETMARKERS")
  (make-package "ARUCO_POSE::SETMARKERS"))
(unless (find-package "ARUCO_POSE::SETMARKERSREQUEST")
  (make-package "ARUCO_POSE::SETMARKERSREQUEST"))
(unless (find-package "ARUCO_POSE::SETMARKERSRESPONSE")
  (make-package "ARUCO_POSE::SETMARKERSRESPONSE"))

(in-package "ROS")





(defclass aruco_pose::SetMarkersRequest
  :super ros::object
  :slots (_markers ))

(defmethod aruco_pose::SetMarkersRequest
  (:init
   (&key
    ((:markers __markers) ())
    )
   (send-super :init)
   (setq _markers __markers)
   self)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; aruco_pose/Marker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; aruco_pose/Marker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; aruco_pose/Marker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance aruco_pose::Marker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass aruco_pose::SetMarkersResponse
  :super ros::object
  :slots (_success _message ))

(defmethod aruco_pose::SetMarkersResponse
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

(defclass aruco_pose::SetMarkers
  :super ros::object
  :slots ())

(setf (get aruco_pose::SetMarkers :md5sum-) "d6e97b92668530c96251237967755989")
(setf (get aruco_pose::SetMarkers :datatype-) "aruco_pose/SetMarkers")
(setf (get aruco_pose::SetMarkers :request) aruco_pose::SetMarkersRequest)
(setf (get aruco_pose::SetMarkers :response) aruco_pose::SetMarkersResponse)

(defmethod aruco_pose::SetMarkersRequest
  (:response () (instance aruco_pose::SetMarkersResponse :init)))

(setf (get aruco_pose::SetMarkersRequest :md5sum-) "d6e97b92668530c96251237967755989")
(setf (get aruco_pose::SetMarkersRequest :datatype-) "aruco_pose/SetMarkersRequest")
(setf (get aruco_pose::SetMarkersRequest :definition-)
      "# * Add or change markers in the map
# * Change markers' properties, e. g. lengths

Marker[] markers # if length or pose is nan - remove from map

================================================================================
MSG: aruco_pose/Marker
uint32 id
float32 length
geometry_msgs/Pose pose
Point2D c1
Point2D c2
Point2D c3
Point2D c4

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: aruco_pose/Point2D
float32 x
float32 y
---
bool success
string message

")

(setf (get aruco_pose::SetMarkersResponse :md5sum-) "d6e97b92668530c96251237967755989")
(setf (get aruco_pose::SetMarkersResponse :datatype-) "aruco_pose/SetMarkersResponse")
(setf (get aruco_pose::SetMarkersResponse :definition-)
      "# * Add or change markers in the map
# * Change markers' properties, e. g. lengths

Marker[] markers # if length or pose is nan - remove from map

================================================================================
MSG: aruco_pose/Marker
uint32 id
float32 length
geometry_msgs/Pose pose
Point2D c1
Point2D c2
Point2D c3
Point2D c4

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: aruco_pose/Point2D
float32 x
float32 y
---
bool success
string message

")



(provide :aruco_pose/SetMarkers "d6e97b92668530c96251237967755989")



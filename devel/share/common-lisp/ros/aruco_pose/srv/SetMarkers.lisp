; Auto-generated. Do not edit!


(cl:in-package aruco_pose-srv)


;//! \htmlinclude SetMarkers-request.msg.html

(cl:defclass <SetMarkers-request> (roslisp-msg-protocol:ros-message)
  ((markers
    :reader markers
    :initarg :markers
    :type (cl:vector aruco_pose-msg:Marker)
   :initform (cl:make-array 0 :element-type 'aruco_pose-msg:Marker :initial-element (cl:make-instance 'aruco_pose-msg:Marker))))
)

(cl:defclass SetMarkers-request (<SetMarkers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMarkers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMarkers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_pose-srv:<SetMarkers-request> is deprecated: use aruco_pose-srv:SetMarkers-request instead.")))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <SetMarkers-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_pose-srv:markers-val is deprecated.  Use aruco_pose-srv:markers instead.")
  (markers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMarkers-request>) ostream)
  "Serializes a message object of type '<SetMarkers-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMarkers-request>) istream)
  "Deserializes a message object of type '<SetMarkers-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'aruco_pose-msg:Marker))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMarkers-request>)))
  "Returns string type for a service object of type '<SetMarkers-request>"
  "aruco_pose/SetMarkersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMarkers-request)))
  "Returns string type for a service object of type 'SetMarkers-request"
  "aruco_pose/SetMarkersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMarkers-request>)))
  "Returns md5sum for a message object of type '<SetMarkers-request>"
  "d6e97b92668530c96251237967755989")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMarkers-request)))
  "Returns md5sum for a message object of type 'SetMarkers-request"
  "d6e97b92668530c96251237967755989")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMarkers-request>)))
  "Returns full string definition for message of type '<SetMarkers-request>"
  (cl:format cl:nil "# * Add or change markers in the map~%# * Change markers' properties, e. g. lengths~%~%Marker[] markers # if length or pose is nan - remove from map~%~%================================================================================~%MSG: aruco_pose/Marker~%uint32 id~%float32 length~%geometry_msgs/Pose pose~%Point2D c1~%Point2D c2~%Point2D c3~%Point2D c4~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: aruco_pose/Point2D~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMarkers-request)))
  "Returns full string definition for message of type 'SetMarkers-request"
  (cl:format cl:nil "# * Add or change markers in the map~%# * Change markers' properties, e. g. lengths~%~%Marker[] markers # if length or pose is nan - remove from map~%~%================================================================================~%MSG: aruco_pose/Marker~%uint32 id~%float32 length~%geometry_msgs/Pose pose~%Point2D c1~%Point2D c2~%Point2D c3~%Point2D c4~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: aruco_pose/Point2D~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMarkers-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMarkers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMarkers-request
    (cl:cons ':markers (markers msg))
))
;//! \htmlinclude SetMarkers-response.msg.html

(cl:defclass <SetMarkers-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetMarkers-response (<SetMarkers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMarkers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMarkers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_pose-srv:<SetMarkers-response> is deprecated: use aruco_pose-srv:SetMarkers-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMarkers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_pose-srv:success-val is deprecated.  Use aruco_pose-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetMarkers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_pose-srv:message-val is deprecated.  Use aruco_pose-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMarkers-response>) ostream)
  "Serializes a message object of type '<SetMarkers-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMarkers-response>) istream)
  "Deserializes a message object of type '<SetMarkers-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMarkers-response>)))
  "Returns string type for a service object of type '<SetMarkers-response>"
  "aruco_pose/SetMarkersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMarkers-response)))
  "Returns string type for a service object of type 'SetMarkers-response"
  "aruco_pose/SetMarkersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMarkers-response>)))
  "Returns md5sum for a message object of type '<SetMarkers-response>"
  "d6e97b92668530c96251237967755989")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMarkers-response)))
  "Returns md5sum for a message object of type 'SetMarkers-response"
  "d6e97b92668530c96251237967755989")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMarkers-response>)))
  "Returns full string definition for message of type '<SetMarkers-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMarkers-response)))
  "Returns full string definition for message of type 'SetMarkers-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMarkers-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMarkers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMarkers-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMarkers)))
  'SetMarkers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMarkers)))
  'SetMarkers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMarkers)))
  "Returns string type for a service object of type '<SetMarkers>"
  "aruco_pose/SetMarkers")
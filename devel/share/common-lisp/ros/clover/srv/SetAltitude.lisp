; Auto-generated. Do not edit!


(cl:in-package clover-srv)


;//! \htmlinclude SetAltitude-request.msg.html

(cl:defclass <SetAltitude-request> (roslisp-msg-protocol:ros-message)
  ((z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass SetAltitude-request (<SetAltitude-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAltitude-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAltitude-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name clover-srv:<SetAltitude-request> is deprecated: use clover-srv:SetAltitude-request instead.")))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <SetAltitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:z-val is deprecated.  Use clover-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetAltitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:frame_id-val is deprecated.  Use clover-srv:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAltitude-request>) ostream)
  "Serializes a message object of type '<SetAltitude-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAltitude-request>) istream)
  "Deserializes a message object of type '<SetAltitude-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAltitude-request>)))
  "Returns string type for a service object of type '<SetAltitude-request>"
  "clover/SetAltitudeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAltitude-request)))
  "Returns string type for a service object of type 'SetAltitude-request"
  "clover/SetAltitudeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAltitude-request>)))
  "Returns md5sum for a message object of type '<SetAltitude-request>"
  "3156c628a6aee1d23a3fc3177b7fa0dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAltitude-request)))
  "Returns md5sum for a message object of type 'SetAltitude-request"
  "3156c628a6aee1d23a3fc3177b7fa0dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAltitude-request>)))
  "Returns full string definition for message of type '<SetAltitude-request>"
  (cl:format cl:nil "float32 z~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAltitude-request)))
  "Returns full string definition for message of type 'SetAltitude-request"
  (cl:format cl:nil "float32 z~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAltitude-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAltitude-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAltitude-request
    (cl:cons ':z (z msg))
    (cl:cons ':frame_id (frame_id msg))
))
;//! \htmlinclude SetAltitude-response.msg.html

(cl:defclass <SetAltitude-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetAltitude-response (<SetAltitude-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAltitude-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAltitude-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name clover-srv:<SetAltitude-response> is deprecated: use clover-srv:SetAltitude-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetAltitude-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:success-val is deprecated.  Use clover-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetAltitude-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:message-val is deprecated.  Use clover-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAltitude-response>) ostream)
  "Serializes a message object of type '<SetAltitude-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAltitude-response>) istream)
  "Deserializes a message object of type '<SetAltitude-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAltitude-response>)))
  "Returns string type for a service object of type '<SetAltitude-response>"
  "clover/SetAltitudeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAltitude-response)))
  "Returns string type for a service object of type 'SetAltitude-response"
  "clover/SetAltitudeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAltitude-response>)))
  "Returns md5sum for a message object of type '<SetAltitude-response>"
  "3156c628a6aee1d23a3fc3177b7fa0dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAltitude-response)))
  "Returns md5sum for a message object of type 'SetAltitude-response"
  "3156c628a6aee1d23a3fc3177b7fa0dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAltitude-response>)))
  "Returns full string definition for message of type '<SetAltitude-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAltitude-response)))
  "Returns full string definition for message of type 'SetAltitude-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAltitude-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAltitude-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAltitude-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAltitude)))
  'SetAltitude-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAltitude)))
  'SetAltitude-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAltitude)))
  "Returns string type for a service object of type '<SetAltitude>"
  "clover/SetAltitude")
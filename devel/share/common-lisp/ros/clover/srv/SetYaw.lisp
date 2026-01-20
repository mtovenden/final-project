; Auto-generated. Do not edit!


(cl:in-package clover-srv)


;//! \htmlinclude SetYaw-request.msg.html

(cl:defclass <SetYaw-request> (roslisp-msg-protocol:ros-message)
  ((yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass SetYaw-request (<SetYaw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetYaw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetYaw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name clover-srv:<SetYaw-request> is deprecated: use clover-srv:SetYaw-request instead.")))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <SetYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:yaw-val is deprecated.  Use clover-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:frame_id-val is deprecated.  Use clover-srv:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetYaw-request>) ostream)
  "Serializes a message object of type '<SetYaw-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetYaw-request>) istream)
  "Deserializes a message object of type '<SetYaw-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetYaw-request>)))
  "Returns string type for a service object of type '<SetYaw-request>"
  "clover/SetYawRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetYaw-request)))
  "Returns string type for a service object of type 'SetYaw-request"
  "clover/SetYawRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetYaw-request>)))
  "Returns md5sum for a message object of type '<SetYaw-request>"
  "8e1005e0652136b0ffee84fd89127463")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetYaw-request)))
  "Returns md5sum for a message object of type 'SetYaw-request"
  "8e1005e0652136b0ffee84fd89127463")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetYaw-request>)))
  "Returns full string definition for message of type '<SetYaw-request>"
  (cl:format cl:nil "float32 yaw~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetYaw-request)))
  "Returns full string definition for message of type 'SetYaw-request"
  (cl:format cl:nil "float32 yaw~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetYaw-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetYaw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetYaw-request
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':frame_id (frame_id msg))
))
;//! \htmlinclude SetYaw-response.msg.html

(cl:defclass <SetYaw-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetYaw-response (<SetYaw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetYaw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetYaw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name clover-srv:<SetYaw-response> is deprecated: use clover-srv:SetYaw-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetYaw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:success-val is deprecated.  Use clover-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetYaw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:message-val is deprecated.  Use clover-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetYaw-response>) ostream)
  "Serializes a message object of type '<SetYaw-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetYaw-response>) istream)
  "Deserializes a message object of type '<SetYaw-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetYaw-response>)))
  "Returns string type for a service object of type '<SetYaw-response>"
  "clover/SetYawResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetYaw-response)))
  "Returns string type for a service object of type 'SetYaw-response"
  "clover/SetYawResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetYaw-response>)))
  "Returns md5sum for a message object of type '<SetYaw-response>"
  "8e1005e0652136b0ffee84fd89127463")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetYaw-response)))
  "Returns md5sum for a message object of type 'SetYaw-response"
  "8e1005e0652136b0ffee84fd89127463")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetYaw-response>)))
  "Returns full string definition for message of type '<SetYaw-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetYaw-response)))
  "Returns full string definition for message of type 'SetYaw-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetYaw-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetYaw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetYaw-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetYaw)))
  'SetYaw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetYaw)))
  'SetYaw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetYaw)))
  "Returns string type for a service object of type '<SetYaw>"
  "clover/SetYaw")
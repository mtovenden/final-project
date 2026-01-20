; Auto-generated. Do not edit!


(cl:in-package clover-srv)


;//! \htmlinclude SetYawRate-request.msg.html

(cl:defclass <SetYawRate-request> (roslisp-msg-protocol:ros-message)
  ((yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetYawRate-request (<SetYawRate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetYawRate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetYawRate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name clover-srv:<SetYawRate-request> is deprecated: use clover-srv:SetYawRate-request instead.")))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <SetYawRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:yaw_rate-val is deprecated.  Use clover-srv:yaw_rate instead.")
  (yaw_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetYawRate-request>) ostream)
  "Serializes a message object of type '<SetYawRate-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetYawRate-request>) istream)
  "Deserializes a message object of type '<SetYawRate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetYawRate-request>)))
  "Returns string type for a service object of type '<SetYawRate-request>"
  "clover/SetYawRateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetYawRate-request)))
  "Returns string type for a service object of type 'SetYawRate-request"
  "clover/SetYawRateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetYawRate-request>)))
  "Returns md5sum for a message object of type '<SetYawRate-request>"
  "e84dd53db872d0c7a7d675a20e28c95f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetYawRate-request)))
  "Returns md5sum for a message object of type 'SetYawRate-request"
  "e84dd53db872d0c7a7d675a20e28c95f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetYawRate-request>)))
  "Returns full string definition for message of type '<SetYawRate-request>"
  (cl:format cl:nil "float32 yaw_rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetYawRate-request)))
  "Returns full string definition for message of type 'SetYawRate-request"
  (cl:format cl:nil "float32 yaw_rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetYawRate-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetYawRate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetYawRate-request
    (cl:cons ':yaw_rate (yaw_rate msg))
))
;//! \htmlinclude SetYawRate-response.msg.html

(cl:defclass <SetYawRate-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetYawRate-response (<SetYawRate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetYawRate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetYawRate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name clover-srv:<SetYawRate-response> is deprecated: use clover-srv:SetYawRate-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:success-val is deprecated.  Use clover-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetYawRate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clover-srv:message-val is deprecated.  Use clover-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetYawRate-response>) ostream)
  "Serializes a message object of type '<SetYawRate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetYawRate-response>) istream)
  "Deserializes a message object of type '<SetYawRate-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetYawRate-response>)))
  "Returns string type for a service object of type '<SetYawRate-response>"
  "clover/SetYawRateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetYawRate-response)))
  "Returns string type for a service object of type 'SetYawRate-response"
  "clover/SetYawRateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetYawRate-response>)))
  "Returns md5sum for a message object of type '<SetYawRate-response>"
  "e84dd53db872d0c7a7d675a20e28c95f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetYawRate-response)))
  "Returns md5sum for a message object of type 'SetYawRate-response"
  "e84dd53db872d0c7a7d675a20e28c95f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetYawRate-response>)))
  "Returns full string definition for message of type '<SetYawRate-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetYawRate-response)))
  "Returns full string definition for message of type 'SetYawRate-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetYawRate-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetYawRate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetYawRate-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetYawRate)))
  'SetYawRate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetYawRate)))
  'SetYawRate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetYawRate)))
  "Returns string type for a service object of type '<SetYawRate>"
  "clover/SetYawRate")
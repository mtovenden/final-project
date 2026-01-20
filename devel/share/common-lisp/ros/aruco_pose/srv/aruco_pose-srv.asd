
(cl:in-package :asdf)

(defsystem "aruco_pose-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :aruco_pose-msg
)
  :components ((:file "_package")
    (:file "SetMarkers" :depends-on ("_package_SetMarkers"))
    (:file "_package_SetMarkers" :depends-on ("_package"))
  ))
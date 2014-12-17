
(cl:in-package :asdf)

(defsystem "pr2_joint_trajectory_bridge-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "JointTrajectoryPointBridge" :depends-on ("_package_JointTrajectoryPointBridge"))
    (:file "_package_JointTrajectoryPointBridge" :depends-on ("_package"))
    (:file "JointTrajectoryBridge" :depends-on ("_package_JointTrajectoryBridge"))
    (:file "_package_JointTrajectoryBridge" :depends-on ("_package"))
  ))
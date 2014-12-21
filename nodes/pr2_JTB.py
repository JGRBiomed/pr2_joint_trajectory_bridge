#!/usr/bin/python

# setup ROS stuff
NODE_NAME = 'pr2_joint_trajectory_bridge'
import roslib; roslib.load_manifest(NODE_NAME)
roslib.load_manifest('trajectory_msgs')
import rospy
from std_msgs.msg import String
from trajectory_msgs.msg import *
from pr2_joint_trajectory_bridge.msg import *

jointtrajectory = JointTrajectoryPointBridge()

class pr2JointTrajectoryBridge :

    def __init__(self, arm):

        self.arm = arm

        self.currentTrajectory = JointTrajectory()

        rospy.Subscriber("/pr2_joint_trajectory_bridge", JointTrajectory, self.jointTrajectoryCallback)

        if self.arm=="left_arm" :
            self.trajPublisher = rospy.Publisher('/pr2/l_arm/move_group/display_planned_path', JointTrajectory)
        elif self.arm=="right_arm" :
            self.trajPublisher = rospy.Publisher('/pr2/r_arm/move_group/display_planned_path', JointTrajectory)
        elif self.arm=="head" :
            self.trajPublisher = rospy.Publisher('/pr2/head/move_group/display_planned_path', JointTrajectory)
        else :
            rospy.logerr("pr2 -- unknown joint")

    def jointStateCallback(self, data):
        self.currentState = data

    def callback(data):
        JointTrajectory = data      

    def formatJointTrajectoryMsg(self, j, offset) :

        if not (len(j) == self.numJoints) :
            rospy.logerr("pr2 formatJointTrajectoryMsg() -- incorrectly sized joint message")
            return None

        jt = JointTrajectory()
        jt.header.seq = 0
        jt.header.stamp = rospy.Time.now()
        jt.header.frame_id = ""
        jt.name = []
        jt.position = []

    def converter():
        rospy.init_node(NODE_NAME)
        #rospy.Subscriber(topic_name, trajectory_msgs.msg.JointTrajectoryBridge)
        rospy.Subscriber("/pr2_joint_trajectory_bridge", JointTrajectoryPointBridge)
        pub = rospy.Publisher("/pr2_joint_trajectory_bridge", JointTrajectoryPointBridge)
        #pub = rospy.Publisher("/trajectory_msgs", JointTrajectoryPoint)
        #jointtrajectory.positions = JointTrajectoryPointBridge.positions
        #jointtrajectory.velocities = JointTrajectoryPointBridge.velocities

    while not rospy.is_shutdown():
        pub.publish(jointtrajectory)

if __name__ == '__main__':
   converter()

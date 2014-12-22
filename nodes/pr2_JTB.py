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
        self.currentTrajectory = JointTrajectoryBridge()
        rospy.Subscriber("/pr2_joint_trajectory_bridge", JointTrajectory, self.jointTrajectoryCallback)
        if self.arm=="left_arm" :
            self.trajPublisher = rospy.Publisher('/pr2/l_arm/move_group/display_planned_path', JointTrajectory)
        elif self.arm=="right_arm" :
            self.trajPublisher = rospy.Publisher('/pr2/r_arm/move_group/display_planned_path', JointTrajectory)
        elif self.arm=="head" :
            self.trajPublisher = rospy.Publisher('/pr2/head/move_group/display_planned_path', JointTrajectory)
        else :
            rospy.logerr("pr2 -- unknown joint")

    def jointTrajectoryCallback(self, data):
        self.currentState = data

    def callback(data):
        JointTrajectory = data      

    #def formatJointTrajectoryMsg(self, data) :
    #    jt = JointTrajectory()
    #    jt.header.seq = 0
    #    jt.header.stamp = rospy.Time.now()
    #    jt.header.frame_id = ""
    #    jt.name = []
    #    jt.position = []

    #    return jt

    def converter():
        rospy.init_node(NODE_NAME)
        #rospy.Subscriber(topic_name, trajectory_msgs.msg.JointTrajectoryBridge)
        rospy.Subscriber("/pr2_joint_trajectory_bridge", JointTrajectoryBridge)
        pub = rospy.Publisher("/pr2_joint_trajectory_bridge", JointTrajectory)
        #jointtrajectory.positions = JointTrajectoryPointBridge.positions
        #jointtrajectory.velocities = JointTrajectoryPointBridge.velocities

i    while not rospy.is_shutdown():
        pub.publish(jointtrajectory)

if __name__ == '__main__':
    converter()
    try:
        pr2TrajectoryGeneratorLeftArm = pr2JointTrajectoryBridge(7, 500, "left_arm")
        pr2TrajectoryGeneratorRightArm = pr2JointTrajectoryBridge(7, 500, "right_arm")
        pr2TrajectoryGeneratorLeftLeg = pr2JointTrajectoryBridge(7, 500, "left_leg")
        pr2TrajectoryGeneratorHead = pr2JointTrajectoryBridge(3, 500, "head")

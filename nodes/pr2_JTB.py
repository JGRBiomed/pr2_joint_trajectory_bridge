#!/usr/bin/python

# setup ROS stuff
NODE_NAME = 'pr2_joint_trajectory_bridge'
import roslib; roslib.load_manifest(NODE_NAME)
roslib.load_manifest('trajectory_msgs')
import rospy
from std_msgs.msg import String
from trajectory_msgs.msg import *
from pr2_joint_trajectory_bridge.msg import *

jointtrajectory = JointTrajectoryPoint()


def callback(data):
    JointTrajectory = data      

def converter():
    rospy.init_node(NODE_NAME)
    #rospy.Subscriber(topic_name, trajectory_msgs.msg.JointTrajectoryBridge)
    rospy.Subscriber("/pr2_joint_trajectory_bridge", JointTrajectoryPointBridge)
    pub = rospy.Publisher("/pr2_joint_trajectory_bridge", JointTrajectoryPoint)
    #pub = rospy.Publisher("/trajectory_msgs", JointTrajectoryPoint)
    jointtrajectory.positions = JointTrajectoryPointBridge.positions
    jointtrajectory.velocities = JointTrajectoryPointBridge.velocities

    while not rospy.is_shutdown():
        pub.publish(jointtrajectory)

if __name__ == '__main__':
   converter()

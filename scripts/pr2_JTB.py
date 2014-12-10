#!/usr/bin/python

# setup ROS stuff
NODE_NAME = 'pr2_joint_trajectory_bridge'
import roslib; roslib.load_manifest(NODE_NAME)
import rospy
from std_msgs.msg import String
from trajectory_msgs.msg import JointTrajectory

jointtrajectory = JointTrajectory()


def callback(data):
    JointTrajectory = data      

def converter():
    rospy.init_node(NODE_NAME)
    #rospy.Subscriber(topic_name, trajectory_msgs.msg.JointTrajectoryBridge)
    rospy.Subscriber("/pr2_joint_trajectory_bridge", trajectory_msgs.msg.JointTrajectoryBridge)
    pub = rospy.Publisher("/trajectory_msgs", JointTrajectory)
    jointtrajectory.position = JointTrajectoryBridge.position
    jointtrajectory.velocity = JointTrajectoryBridge.velocity

    while not rospy.is_shutdown():
        pub.publish(jointtrajectory)

if __name__ == '__main__':
   converter()

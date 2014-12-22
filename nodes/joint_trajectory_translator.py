#!/usr/bin/python

import rospy
import roslib; roslib.load_manifest('pr2_joint_trajectory_bridge')

from trajectory_msgs.msg import *
from pr2_joint_trajectory_bridge.msg import *

class JointTrajectoryTranslator :

    def __init__(self, controller_name):

        # set up the publisher and subscribers based on the controller name
        self.sub_name = "/" + controller_name + "_bridge/command"
        self.pub_name = "/" + controller_name + "/command"

        # subscription to the bridge topic name
        self.subscriber = rospy.Subscriber(self.sub_name, pr2_joint_trajectory_bridge.msg.JointTrajectoryBridge, self.callback)

        # publisher to the robot controller of the old/groovy JT type
        self.publisher = rospy.Publisher(self.pub_name, trajectory_msgs.msg.JointTrajectory, queue_size=10)


    def callback(self, data):

        # create a groovy JT msg and copy the data from the bridge topic into it
        jt = JointTrajectory()
        jt.header = data.header
        jt.joint_names = data.joint_names
        jt.points = []
        for p in data.points :
            point = JointTrajectoryPoint()
            point.positions = p.positions
            point.velocities = p.velocities
            point.accelerations = p.accelerations
            point.time_from_start = p.time_from_start
            jt.points.append(point)

        # publish to the robot command topic
        self.publisher.publish(jt)


if __name__ == '__main__':
    
    rospy.init_node("JointTrajectoryTranslator")

    # set up the list of robot controllers that need to be translated
    controller_list = []
    controller_list.append("r_arm_controller")
    controller_list.append("l_arm_controller")
    controller_list.append("head_controller")
 
    translators = {}
    for c in controller_list :
        translators[c] = JointTrajectoryTranslator(c)

    # set things spinning
    r = rospy.Rate(50.0)
    while not rospy.is_shutdown():
        r.sleep()

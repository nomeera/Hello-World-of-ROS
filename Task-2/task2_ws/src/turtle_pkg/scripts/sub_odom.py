#!/usr/bin/python3

import rospy
from turtlesim.msg import Pose


def callback(pose):
    rospy.loginfo("(x, y, theta) = (%f, %f, %f)\n", pose.x, pose.y, pose.theta)
    rospy.loginfo("linear_velocity = %f\n", pose.linear_velocity)
    rospy.loginfo("angular_velocity = %f\n",pose.angular_velocity)


def sub_odom():

    # node
    rospy.init_node("sub_odom", anonymous=True)

    # subscriber
    sub = rospy.Subscriber("turtle1/pose", Pose, callback)
    rospy.spin()

if __name__ == "__main__":
    try:
        sub_odom()
    except rospy.ROSInterruptException:
        pass

#!/usr/bin/python3

import rospy
from geometry_msgs.msg import Twist


def pub_twist():

    # node
    rospy.init_node("pub_twist", anonymous=True)

    # publisher
    pub = rospy.Publisher("turtle1/cmd_vel", Twist, queue_size=1)
    rate = rospy.Rate(1)

    # message
    twist = Twist()
    twist.angular.z = 1
    twist.linear.x = 1

    # publishing
    while not rospy.is_shutdown():
        pub.publish(twist)
        rospy.loginfo(twist)
        rate.sleep()


if __name__ == "__main__":
    try:
        pub_twist()
    except rospy.ROSInterruptException:
        pass

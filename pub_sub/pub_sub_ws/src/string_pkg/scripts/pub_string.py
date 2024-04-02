#!/usr/bin/python3

import rospy
from std_msgs.msg import String


def talker():
    # create node
    rospy.init_node("talker", anonymous=True)
    # create publisher object
    pub = rospy.Publisher("string_topic", String, queue_size=1)
    # create rate object
    rate = rospy.Rate(10)

    # define msg and sending loop
    msg = "I am Learning Robotics and ROS"
    while not rospy.is_shutdown():
        pub.publish(msg)
        rate.sleep() # pause loop ro reach desired rate frequency



if __name__ == "__main__":
    try:
        talker()
    except rospy.ROSInternalException:
        pass
#!/usr/bin/python3

import rospy
from std_msgs.msg import String


def listener():
    # create sub node
    rospy.init_node("listener", anonymous=True)
    # create sub object
    sub = rospy.Subscriber("string_topic", String, callback)
    # processes incoming messages until the node is shutdown
    rospy.spin()

def callback(msg):
    rospy.loginfo("Hello, %s", msg.data)

if __name__ == "__main__":
    listener()
#!/usr/bin/python3

import rospy
from std_msgs.msg import Int32


def listener():
    # create sub node
    rospy.init_node("listener", anonymous= True)
    # subscribe /count_topic
    rospy.Subscriber("count_topic", Int32, callback, queue_size= 1)
    rospy.spin()  # process incoming messages until the node is shutdown


def callback(count):  # callback function to handle msg
    rospy.loginfo("count = %d", count.data)



if __name__ == "__main__":
    listener()


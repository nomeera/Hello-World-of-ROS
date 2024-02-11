#!/usr/bin/python3

import rospy
from std_msgs.msg import Int32

def talker():
    
    rospy.init_node("Talker", anonymous=True)  # create talker node
    pub = rospy.Publisher("count_topic", Int32, queue_size=10) # create pub object that publish Int32 via /count_topic with queue size = 1
    rate = rospy.Rate(1) # create a rate object that determine the rate frequency

    
    count_msg = 100
    while not rospy.is_shutdown(): 
        count_msg += 1
        rospy.loginfo(count_msg) # print count_msg on screen
        pub.publish(count_msg)   # publish count_msg using pub object through /count_topic
        rate.sleep()  # spin() simply keeps python from exiting until this node is stopped

if __name__ == "__main__":
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

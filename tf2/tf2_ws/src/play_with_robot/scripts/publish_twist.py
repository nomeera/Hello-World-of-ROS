#!/usr/bin/python3

import rospy
from geometry_msgs.msg import Twist

# node
rospy.init_node("pub_twist", anonymous=True)
# publisher object
pub = rospy.Publisher("/cmd_vel", Twist, queue_size=1)
rate = rospy.Rate(1)
# message
velocities = Twist()
velocities.linear.x = 0.1
velocities.angular.z = 0.1
# publishing
while not rospy.is_shutdown():
    pub.publish(velocities)
    rate.sleep()

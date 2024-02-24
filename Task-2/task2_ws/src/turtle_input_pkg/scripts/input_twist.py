#!/usr/bin/python3

import rospy
from geometry_msgs.msg import Twist


def input_twist():

    # node
    rospy.init_node("input_twist", anonymous=True)

    # publisher
    pub = rospy.Publisher("turtle1/cmd_vel", Twist, queue_size=1)
    rate = rospy.Rate(1)

    # message
    twist = Twist()

    # user interface
    linear_x = float(input("Enter linear.x value [2-6]: "))
    angular_z = float(input("Enter angular.z value [2-6]: "))

    # message condition
    while not (2 <= linear_x <= 6 and 2 <= angular_z <= 6):
        print("\nPlease Enter value from 2 to 6: ")
        linear_x = float(input("Enter linear.x value [2-6]: "))
        angular_z = float(input("Enter angular.z value [2-6]: "))

    # message
    twist.linear.x = linear_x
    twist.angular.z = angular_z

    # publishing
    while not rospy.is_shutdown():
        pub.publish(twist)
        rospy.loginfo(twist)
        rate.sleep()


if __name__ == "__main__":
    try:
        input_twist()
    except rospy.ROSInterruptException:
        pass

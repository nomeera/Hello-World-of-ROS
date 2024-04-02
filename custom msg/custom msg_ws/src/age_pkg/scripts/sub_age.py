#!/usr/bin/python3

import rospy
from age_pkg.msg import Age


def callback(age):
    
    rospy.loginfo("\nMy age is %d days, %d months and %d years",age.days, age.months,age.years)



def sub_age():

    # node
    rospy.init_node("sub_node", anonymous=True)

    # subscribe
    sub = rospy.Subscriber("age_topic", Age, callback)
    rospy.spin()    


if __name__ == "__main__":
    sub_age()

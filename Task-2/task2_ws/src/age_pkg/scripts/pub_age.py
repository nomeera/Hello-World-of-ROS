#!/usr/bin/python3

import rospy
from age_pkg.msg import Age


def pub_age():

    # node
    rospy.init_node("pub_age", anonymous=True)

    # publish
    pub = rospy.Publisher("age_topic", Age, queue_size=1)
    rate = rospy.Rate(1)

    # message
    age = Age()
    age.days = 17
    age.months = 3
    age.years = 24

    # publishing
    while not rospy.is_shutdown():
        pub.publish(age)
        rate.sleep()


if __name__ == "__main__":
    try:
        pub_age()
    except rospy.ROSInterruptException:
        pass

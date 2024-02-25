#!/usr/bin/python3

import rospy
from sum_pkg.srv import sum, sumResponse, sumRequest


def handle_sum_two_num(req):
    print("Returning [%s + %s = %s]" % (req.num1, req.num2, (req.num1 + req.num2)))
    return sumResponse(req.num1 + req.num2)


def sum_two_num_server():
    # node
    rospy.init_node("sum_two_num_server")
    # service
    rospy.Service("sum_two_num", sum, handle_sum_two_num)
    print("Ready to sum two num")
    rospy.spin()


if __name__ == "__main__":
    sum_two_num_server()

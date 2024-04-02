#!/usr/bin/python3

import sys, rospy
from sum_pkg.srv import sum, sumRequest


def sum_two_num(x, y):

    # waiting service
    rospy.wait_for_service("sum_two_num")

    # handling connection errors
    try:
        # create request
        request1 = rospy.ServiceProxy("sum_two_num", sum)
        resp1 = request1(x, y)
        return resp1.sum
    except rospy.ServiceException as e:
        print("Service call failed %s" % e)


# handle user input
def usage():
    return "%s [x,y]" % sys.argv[0]


if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = float(sys.argv[1])
        y = float(sys.argv[2])

    else:
        print(usage())
        sys.exit(1)
    print("Requesting %s + %s" % (x, y))
    s = sum_two_num(x, y)
    print("%s + %s = %s" % (x, y, s))

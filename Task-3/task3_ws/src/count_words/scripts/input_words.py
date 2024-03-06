#!/usr/bin/python3

import rospy, sys
from count_words.srv import CountWords , CountWordsRequest


def count_words(words):

    # waiting service
    rospy.wait_for_service("count_words")

    # handling connection errors
    try:
        # crete request
        request1 = rospy.ServiceProxy("count_words", CountWords)
        resp1 = request1(words)
        return resp1.count
    except rospy.ServiceException as e:
        print("Service call failed %s" % e)


# handle user input
def usage():
    return "%s String " % sys.argv[0]


if __name__ == "__main__":
    usr_input = input()
    print ("Requesting to count number of words in (%s)" %usr_input)
    count_words(usr_input)

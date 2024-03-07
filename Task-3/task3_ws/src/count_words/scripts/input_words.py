#!/usr/bin/python3

import rospy, sys
from count_word.srv import *


def count_words(usr_input):

    # node
    rospy.init_node("count_words_client", anonymous=True)

    # waiting service
    rospy.wait_for_service("count_words")
    
    # handling connection errors
    try:
        # service and request
        count_words_service = rospy.ServiceProxy("count_words", CountWord)
        request = CountWordRequest()
        request.words = usr_input
        response = count_words_service(request)
        return response.count

    except rospy.ServiceException as e:
        print("Service call failed %s" % e)


# handle user input
def usage():
    return "%s String " % sys.argv[0]


if __name__ == "__main__":
    while not rospy.is_shutdown():
        if len(sys.argv) == 1:
            print("Please input your sentence.")
            usr_input = input()
            print("Requesting to count number of words in:", usr_input)
            word_count = count_words(usr_input)
            print("Number of words:", word_count)
            print("\n")
        else:
            print("Usage: %s <String>" %sys.arg[0])
            sys.exit(1)


"""     if len(sys.argv) == 2:
       usr_input = sys.argv[1]
       print("Requesting to count number of words in:", usr_input)
       word_count = count_words(usr_input)
       print("Number of words:", word_count)
    else:
        print("Usage: %s <String>" %sys.arg[0])
        sys.exit(1) """

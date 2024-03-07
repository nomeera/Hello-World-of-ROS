#!/usr/bin/python3

import rospy, sys
from count_word.srv import *


def handle_request(request):
    word_count = len(request.words.split())
    print("Received a request to count number of words in %s" %request.words)
    return CountWordResponse(word_count)


def count_words_server():

    # node
    rospy.init_node("count_words_server", anonymous=True)

    print("Ready to count number of words in string.")
    # service
    rospy.Service("count_words", CountWord, handle_request)
    rospy.spin()


if __name__ == "__main__":
    count_words_server()

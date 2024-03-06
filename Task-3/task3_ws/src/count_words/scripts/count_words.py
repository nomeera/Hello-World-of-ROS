#!/usr/bin/python3

import rospy
from count_words.srv import CountWords, CountWordsResponse, CountWordsRequest

def handle_words(words):
    count =  len(words.split())
    print("Returning..., Words Count= ")
    return CountWordsResponse(count)

def count_words():

    # node 
    rospy.init_node("count_words_server")
    # service
    rospy.Service("count_words",CountWords,handle_words)
    print ("Ready to count number of words in string.")
    rospy.spin()



if __name__=="__main__":
    count_words ()
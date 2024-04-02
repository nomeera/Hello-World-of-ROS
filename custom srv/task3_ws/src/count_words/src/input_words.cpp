#include <ros/ros.h>
#include <count_words/CountWord.h>
#include <iostream>
#include <string>

using namespace ros;

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "count_words_client", init_options::AnonymousName);
    NodeHandle nh;

    while (ok())
    {

        // inputting
        std::string usr_input;
        if (argc == 1)
        {
            ROS_INFO("Please input your sentence.");
            std::getline(std::cin, usr_input);
            ROS_INFO("Requesting to count number of words in: %s", usr_input.c_str());
        }
        else
        {
            ROS_INFO("Usage: node doesn't accept arguments.");
            return 1;
        }
        spinOnce();

        // service and request
        ServiceClient client = nh.serviceClient<count_words::CountWord>("count_words");
        client.waitForExistence();

        // service
        count_words::CountWord srv;
        srv.request.words = usr_input;

        // handling calling errors
        if (client.call(srv))
            ROS_INFO("Number of words: %d\n", srv.response.count);
        else
        {
            ROS_INFO("Failed to call service count_words\n");
            return 1;
        }
    }

    return 0;
}
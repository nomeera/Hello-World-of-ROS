#include <ros/ros.h>
#include <count_words/CountWord.h>
#include <iostream>

using namespace ros;

bool handle_request(count_words::CountWord::Request &req,
                    count_words::CountWord::Response &res)
{
    res.count = 1;
    short length = req.words.size();

    for (int i = 0; i < length; i++)
    {
        if (req.words[i]==' ')
            res.count++;
    }
    
    ROS_INFO("request: number of words in (%s)", req.words.c_str());
    ROS_INFO("sending back response: [%d]", res.count);
    return true;
}

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "count_words_server", init_options::AnonymousName);
    NodeHandle nh;

    // service and response
    ServiceServer server = nh.advertiseService("count_words", handle_request);
    ROS_INFO("Ready to count number of words in string.");
    spin();

    return 0;
}
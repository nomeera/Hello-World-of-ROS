#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sstream>

using namespace ros;

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "talker", init_options::AnonymousName);
    NodeHandle nh;

    // publisher
    Rate rate(1);
    Publisher pub = nh.advertise<std_msgs::String>("string_topic", 1);

    // message
    std_msgs::String msg;
    std::stringstream ss;
    ss << "I am Learning Robotics and ROS";
    msg.data = ss.str();

    // publishing
    while (ok())
    {
        pub.publish(msg);
        spinOnce();
        rate.sleep();
    }

    return 0;
}
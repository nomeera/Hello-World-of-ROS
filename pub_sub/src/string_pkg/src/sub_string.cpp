#include <ros/ros.h>
#include <std_msgs/String.h>

using namespace ros;

// callback
void callback(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("Hello, %s", msg->data.c_str());
}
int main(int argc, char **argv)
{
    // node
    init(argc, argv, "listener", init_options::AnonymousName);
    NodeHandle nh;

    // subscribe
    Subscriber sub = nh.subscribe("string_topic", 1, callback);
    spin();

    return 0;
}
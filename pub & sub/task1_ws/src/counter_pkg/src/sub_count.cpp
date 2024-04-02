#include "ros/ros.h"
#include "std_msgs/Int32.h"

using namespace ros;
// callback function to handle message
void callback(const std_msgs::Int32::ConstPtr &msg)
{
    // print msg on console screen
    ROS_INFO("count = %d", msg->data);
}
int main(int argc, char **argv)
{
    // node
    init(argc, argv, "listener", init_options::AnonymousName);
    NodeHandle nh;

    // Subscriber
    Subscriber sub = nh.subscribe("count_topic", 1, callback);
    spin();

    return 0;
}
#include <ros/ros.h>
#include <std_msgs/Int32.h>

using namespace ros;

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "talker", init_options::AnonymousName); // initiating node
    NodeHandle nh;                                                // starting node

    // publish
    Rate rate(1);
    Publisher pub = nh.advertise<std_msgs::Int32>("count_topic", 1);

    // defining message
    std_msgs::Int32 count;
    count.data = 100;

    // publishing message
    while (ok())
    {
        pub.publish(count);
        spinOnce();
        rate.sleep();
        ++count.data;
    }

    return 0;
}
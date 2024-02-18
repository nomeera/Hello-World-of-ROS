#include <ros/ros.h>
#include <std_msgs/Int32.h>

int main(int argc, char **argv)
{
    // node
    ros::init(argc, argv, "talker", ros::init_options::AnonymousName); // initiating node
    ros::NodeHandle nh;                                                // starting node

    // publish
    ros::Rate rate(1);
    ros::Publisher pub = nh.advertise<std_msgs::Int32>("count_topic", 1);

    // defining message
    std_msgs::Int32 count;
    count.data = 100;

    // publishing message
    while (ros::ok())
    {
        pub.publish(count);
        ros::spinOnce();
        rate.sleep();
        ++count.data;
    }

    return 0;
}
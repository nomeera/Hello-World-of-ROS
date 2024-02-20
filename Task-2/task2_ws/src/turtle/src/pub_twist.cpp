#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

using namespace ros;

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "pub_twist", init_options::AnonymousName);
    NodeHandle nh;

    // publisher
    Publisher pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1);
    Rate rate(1);

    // message
    geometry_msgs::Twist twist;
    twist.angular.z = 1;
    twist.linear.x = 1;

    // publishing
    while (ok())
    {
        pub.publish(twist);
        ROS_INFO("\ntwist.angular.z = %f\ntwist.linear.x = %f",twist.angular.z,twist.linear.x);
        spinOnce();
        rate.sleep();
    }

    return 0;
}
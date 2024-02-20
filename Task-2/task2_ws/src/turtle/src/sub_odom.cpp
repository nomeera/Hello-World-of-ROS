#include <ros/ros.h>
#include <turtlesim/Pose.h>

using namespace ros;

void callback(const turtlesim::Pose::ConstPtr &pose)
{
    ROS_INFO("(x, y, theta) = (%f, %f, %f)\n", pose->x, pose->y, pose->theta);
    ROS_INFO("linear_velocity = %f\n", pose->linear_velocity);
    ROS_INFO("angular_velocity = %f\n", pose->angular_velocity);
}

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "sub_odom", init_options::AnonymousName);
    NodeHandle nh;

    // subscriber
    Subscriber sub = nh.subscribe<turtlesim::Pose>("turtle1/pose", 1, callback);
    spin();

    return 0;
}
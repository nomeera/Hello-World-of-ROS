#include <ros/ros.h>
#include <tf2_ros/transform_listener.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Spawn.h>

int main(int argc, char **argv)
{

    // node
    ros::init(argc, argv, "my_tf2_listener");
    ros::NodeHandle node;

    // spawning a New Turtle
    ros::service::waitForService("spawn");
    ros::ServiceClient spawner = node.serviceClient<turtlesim::Spawn>("spawn");
    turtlesim::Spawn turtle;
    turtle.request.x = 4;
    turtle.request.y = 2;
    turtle.request.theta = 0;
    turtle.request.name = "turtle2";
    spawner.call(turtle);

    // publisher object
    ros::Publisher turtle_vel =
        node.advertise<geometry_msgs::Twist>("turtle2/cmd_vel", 10);

    // tf2 setup
    tf2_ros::Buffer tfBuffer;                        //  Creates a buffer to store transform information.
    tf2_ros::TransformListener tfListener(tfBuffer); // Creates a transform listener to monitor changes in coordinate frames.

    // Transform Lookup (with error handling)
    ros::Rate rate(10.0);
    while (node.ok())
    {
        geometry_msgs::TransformStamped transformStamped;
        try
        {
            transformStamped = tfBuffer.lookupTransform("turtle2", "turtle1",
                                                        ros::Time(0));
        }
        catch (tf2::TransformException &ex)
        {
            ROS_WARN("%s", ex.what());
            ros::Duration(1.0).sleep();
            continue;
        }

        // Calculates the linear velocity (forward speed) for "turtle2" to move towards "turtle1".
        geometry_msgs::Twist vel_msg;
        // Calculates the angular velocity (rotation) required for "turtle2" to face "turtle1".
        vel_msg.angular.z = 4.0 * atan2(transformStamped.transform.translation.y,
                                        transformStamped.transform.translation.x);
        // Calculates the linear velocity (forward speed) for "turtle2" to move towards "turtle1".
        vel_msg.linear.x = 0.5 * sqrt(pow(transformStamped.transform.translation.x, 2) +
                                      pow(transformStamped.transform.translation.y, 2));
        turtle_vel.publish(vel_msg);

        rate.sleep();
    }
    return 0;
};
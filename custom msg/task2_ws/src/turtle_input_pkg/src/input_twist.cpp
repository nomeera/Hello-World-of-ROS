#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

using namespace std;
using namespace ros;

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "input_twist", init_options::AnonymousName);
    NodeHandle nh;

    // publisher
    Publisher pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1);
    Rate rate(1);

    // message
    geometry_msgs::Twist twist;
    int linear_x, angular_z;

    // user interface with message condition
    int check = 0;
    do
    {
        if (check > 0)
            cout << "\nPlease Enter value from 2 to 6.\n";

        cout << "Enter linear.x value [2-6]: ";
        cin >> linear_x;
        cout << "Enter angular.z value [2-6]: ";
        cin >> angular_z;
        
        ++check;
    } while (!(2 <= linear_x && linear_x <= 6) || !(2 <= angular_z && angular_z <= 6));

    // message
    twist.linear.x = linear_x;
    twist.angular.z = angular_z;

    // publishing
    while (ok())
    {
        pub.publish(twist);
        cout << twist << endl;
        rate.sleep();
    }

    return 0;
}
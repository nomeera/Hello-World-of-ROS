#include <ros/ros.h>
#include "age_pkg/Age.h"

using namespace ros;

void callback(const age_pkg::Age::ConstPtr &age)
{
    ROS_INFO("\nMy age is %ld days, %ld months and %ld years", age->days, age->months, age->years);
}

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "sub_age", init_options::AnonymousName);
    NodeHandle nh;

    // subscribe
    Subscriber sub = nh.subscribe<age_pkg::Age>("age_topic", 1, callback);
    spin();

    return 0;
}
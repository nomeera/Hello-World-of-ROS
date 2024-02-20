#include <ros/ros.h>
#include "age_pkg/Age.h"

using namespace ros;

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "pub_age", init_options::AnonymousName);
    NodeHandle nh;

    // publish
    Publisher pub = nh.advertise<age_pkg::Age>("age_topic", 1);
    Rate rate(1);

    // message
    age_pkg::Age age;
    age.days = 17;
    age.months = 3;
    age.years = 24;

    // publishing
    while (ok())
    {
        pub.publish(age);
        spinOnce();
        rate.sleep();
    }

    return 0;
}
#include <ros/ros.h>
#include <sum_pkg/sum.h>

using namespace ros;

bool handle_request(sum_pkg::sum::Request &req,
                        sum_pkg::sum::Response &res)
{
    res.sum = req.num1 + req.num2;
    ROS_INFO("request: x=%ld, y=%ld", (long int)req.num1, (long int)req.num2);
    ROS_INFO("sending back response: [%ld]", (long int)res.sum);
    return true;
}

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "sum_two_num_server", init_options::AnonymousName);
    NodeHandle nh;

    // service and response
    ServiceServer server = nh.advertiseService("sum_two_num", handle_request);
    ROS_INFO("Ready to sum two num.");
    spin();

    return 0;
}
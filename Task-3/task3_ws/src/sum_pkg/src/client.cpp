#include <ros/ros.h>
#include <sum_pkg/sum.h>
#include <cstdlib>

using namespace ros;

int main(int argc, char **argv)
{
    // node
    init(argc, argv, "sum_two_num_client", init_options::AnonymousName);
    // handling input errors
    if (argc != 3)
    {
        ROS_INFO("Usage: sum_two_num_client X Y");
        return 1;
    }
    NodeHandle nh;

    // service and request
    ServiceClient client = nh.serviceClient<sum_pkg::sum>("sum_two_num");
    // waiting service
    client.waitForExistence();

    // service
    sum_pkg::sum srv;
    srv.request.num1 = atoll(argv[1]);
    srv.request.num2 = atoll(argv[2]);

    // handling calling errors
    if (client.call(srv))
        ROS_INFO("Sum: %ld", (long int)srv.response.sum);
    else
    {
        ROS_ERROR("Failed to call service sum_two_num ");
        return 1;
    }

    return 0;
}

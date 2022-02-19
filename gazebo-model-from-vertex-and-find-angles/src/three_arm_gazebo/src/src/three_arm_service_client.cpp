#include <ros/ros.h>
#include <three_arm_gazebo/AngleInput.h>
#include <cstdlib>					


int main(int argc,char **argv){
    ros::init(argc,argv,"joint_controller_client");

 

    if (argc != 5)				

    {
            ROS_INFO("cmd : rosrun ros_tutorials_service service_client arg0 arg1");
            ROS_INFO("arg0: double number, arg1: double number");
            return 1;
    }
    ros::NodeHandle nh;

    ros::ServiceClient jointServiceClient =
    nh.serviceClient<three_arm_gazebo::AngleInput>("jointServer");

    three_arm_gazebo::AngleInput srv;

    srv.request.jointOneAngle = atoll(argv[1]);
    srv.request.jointTwoAngle = atoll(argv[2]);
    srv.request.jointThreeAngle= atoll(argv[3]);
    srv.request.jointFourAngle = atoll(argv[4]);

    if (jointServiceClient.call(srv)) {

    ROS_INFO("send srv, srv.Request.a and b: %f, %f", (float)srv.request.jointOneAngle, (float)srv.request.jointTwoAngle);
    
    }
        else
    {
        ROS_ERROR("Failed to call service joint controller service");
        return 1;

    }      
    return 0;

        
}
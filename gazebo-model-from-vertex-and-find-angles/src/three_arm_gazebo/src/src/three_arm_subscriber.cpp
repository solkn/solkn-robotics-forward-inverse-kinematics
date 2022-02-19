#include <ros/ros.h>
#include <three_arm_gazebo/JointAngles.h>


void jointAngleCallback(const three_arm_gazebo::JointAngles::ConstPtr& jointAngles){


    ROS_INFO("joint one angle = %f", jointAngles->jointOneAngle);
    ROS_INFO("joint two angle = %f", jointAngles->jointTwoAngle);
    ROS_INFO("joint three angle = %f", jointAngles->jointThreeAngle);
    ROS_INFO("joint four angle = %f", jointAngles->jointFourAngle);
}



int main(int argc , char **argv){

    ros::init(argc,argv,"three_arm_subscriber");
    ros::NodeHandle nh;


    ros::Subscriber jointAngleSub= nh.subscribe("jointAngles",10,jointAngleCallback);

    ros::spin();

    return 0;



}
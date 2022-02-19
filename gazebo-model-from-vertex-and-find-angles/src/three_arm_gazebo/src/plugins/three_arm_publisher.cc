#include <functional>
// #include <gazebo-11/gazebo/gazebo.hh>
// #include <gazebo-11/gazebo/physics/physics.hh>
// #include <gazebo-11/gazebo/common/common.hh>

#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <gazebo/gazebo.hh>
#include <ros/ros.h>
#include <three_arm_gazebo/JointAngles.h>





namespace gazebo{
    class  ThreeArmPublisher : public ModelPlugin{

        public: ThreeArmPublisher() : ModelPlugin()
    {
        printf("Hello World!\n");
    }
        

        public: void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
        {
            this->model = _parent;

            
            this->rosPub = this->rosNode.advertise<three_arm_gazebo::JointAngles>("jointAngles", 10);
            ROS_INFO("published");
            this->updateConnection = event::Events::ConnectWorldUpdateBegin(std::bind(&ThreeArmPublisher::onUpdate,this));
        }

        public: void onUpdate(){
            
            auto arm_one = this->model->GetJoint("joint_base_one");
            auto arm_two = this->model->GetJoint("joint_one_two");
            auto arm_three = this->model->GetJoint("joint_two_three");
            auto arm_four = this->model->GetJoint("joint_three_four");
        //    ROS_INFO("JOint set");

            three_arm_gazebo::JointAngles msg;
            msg.jointOneAngle=arm_one->Position();
            msg.jointTwoAngle=arm_two->Position();
            msg.jointThreeAngle=arm_three->Position();
            msg.jointFourAngle=arm_four->Position();
            // ROS_INFO("joint angle one %f",arm_one->Position());
            this->rosPub.publish(msg);


        }
        private: physics::ModelPtr model;
        private: ros::NodeHandle rosNode;
        private: ros::Publisher rosPub;
        
        
        private: event::ConnectionPtr updateConnection;
    };

    GZ_REGISTER_MODEL_PLUGIN(ThreeArmPublisher)
    
}
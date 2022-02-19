#include <functional>
// #include <gazebo-11/gazebo/gazebo.hh>
// #include <gazebo-11/gazebo/physics/physics.hh>
// #include <gazebo-11/gazebo/common/common.hh>

#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <gazebo/gazebo.hh>
#include <ros/ros.h>
#include <three_arm_gazebo/AngleInput.h>





namespace gazebo{
    class  ThreeArmService : public ModelPlugin{

        public: ThreeArmService() : ModelPlugin()
    {
        printf("THREE ARM SERVICE***************!\n");
    }
        
         bool getAngles(three_arm_gazebo::AngleInput::Request &req, three_arm_gazebo::AngleInput::Response &res){
           
            ROS_INFO("request: angle one=%f, angle two=%f", (float)req.jointOneAngle, (float)req.jointTwoAngle);
            ROS_INFO("request: angle three=%f, angele four=%f", (float)req.jointThreeAngle, (float)req.jointFourAngle);

            auto joint_one = this->model->GetJoint("joint_base_one");
            auto joint_two = this->model->GetJoint("joint_one_two");
            auto joint_three = this->model->GetJoint("joint_two_three");
            auto joint_four = this->model->GetJoint("joint_three_four");
            ROS_INFO("JOint set");

            float angleOne= M_PI*req.jointOneAngle/180;
            float angleTwo= M_PI*req.jointTwoAngle/180;
            float angleThree= M_PI*req.jointThreeAngle/180;
            float angleFour= M_PI*req.jointFourAngle/180;

            std::string j_one = joint_one->GetScopedName();
            std::string j_two = joint_two->GetScopedName();
            std::string j_three = joint_three->GetScopedName();
            std::string j_four = joint_four->GetScopedName();
            
            

            this->jointController->SetPositionTarget(j_one,angleOne);
            this->jointController->SetPositionTarget(j_two,angleTwo);
            this->jointController->SetPositionTarget(j_three,angleThree);
            this->jointController->SetPositionTarget(j_four,angleFour);

            return true;
            

        }

        public: void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
        {
            this->model = _parent;
            this->jointController = this->model->GetJointController();

            
            // this->rosPub = this->rosNode.advertise<three_arm_gazebo::JointAngles>("jointAngles", 10);
            // ROS_INFO("published");
            this->rosService= this->rosNode.advertiseService("jointServer",&ThreeArmService::getAngles,this);
            // ros::spin();

            // this->updateConnection = event::Events::ConnectWorldUpdateBegin(std::bind(&ThreeArmService::onUpdate,this));


            
        }
      
        
        private: physics::JointControllerPtr jointController;
        private: physics::ModelPtr model;
        private: ros::NodeHandle rosNode;
        private: ros::ServiceServer rosService;
        
        
        // private: event::ConnectionPtr updateConnection;
       

    };

    GZ_REGISTER_MODEL_PLUGIN(ThreeArmService)
    
}
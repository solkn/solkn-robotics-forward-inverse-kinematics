#!/usr/bin/env python3
import rospy
from srv import TransformVector

def callback(data):
	rospy.loginfo(rospy.get_caller_id() + "\nA vector [%f %f %f] has rotated and translated to a vector [%f %f %f %f]", data.a, data.b, data.c, data.x, data.y, data.z, data.g)


def listener():

	rospy.init_node("listener", anonymous=True)
	rospy.Subscriber("chatter", TransformVector, callback)
	rospy.spin()
	
if __name__ == '__main__':
	listener()

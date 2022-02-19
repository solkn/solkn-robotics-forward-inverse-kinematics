#!/usr/bin/env python3
import rospy
import numpy as np
import math

from beginner_tutorials.msg import TransformVector

def x_rotation(θ, vector):
    Rx = np.array([[1, 0, 0, 0], [0, np.cos(θ), -np.sin(θ), 0], [0, np.sin(θ),np.cos(θ), 0], [ 0,  0,  0,   1]])
    return Rx @ vector
    
   
def y_rotation(θ, vector):
    Ry = np.array([[np.cos(θ), 0, np.sin(θ), 0], [0, 1,0, 0 ], [np.sin(θ), 0, np.cos(θ), 0], [0,0,0,1]])
    return Ry @ vector
    
    
def z_rotation(θ, vector):
    Rz = np.array([[np.cos(θ), np.sin(θ), 0, 0], [np.sin(θ), np.cos(θ), 0, 0], [0, 0,1 , 0],[0, 0, 0, 1]])
    return Rz @ vector
    
def translate(translateVector, vector):
    trans = np.array([[1, 0, 0, vector[0]], [0, 1, 0, vector[1]], [0, 0, 1, vector[2]], [0, 0, 0, 1]])
    return trans @ vector
    
def result(vector, vector1,  θ1, θ2, θ3):

    resultTransform = x_rotation(θ1, vector)
    resultTransform = y_rotation(θ2, resultTransform)
    resultTransform = z_rotation(θ3, resultTransform) 
    resultTransform = translate(vector1, resultTransform)
    return resultTransform
    
def talker():
	pub = rospy.Publisher("chatter", TransformVector)
	rospy.init_node("talker", anonymous = True)
	
	while not rospy.is_shutdown():
		print ("Enter X:")
		x = input()
		print ("Enter Y:")
		y = input()
		print ("Enter Z:")
		z = input()
		print ("Enter angle θ1")
		a = input()
		print ("Enter angle θ2")
		b = input()
		print ("Enter angle θ3")
		c = input()
		print ("Enter X to translate vector")
		i = input()
		print ("Enter Y to translate vector")
		j = input()
		print ("Enter Z to translate vector")
		k = input()
		vector = np.array([x, y, z, 1], dtype = 'float64')
		d = np.array([i, j, k], dtype = 'float64')
		q, w, e, f = result(vector, d,  float(a), float(b), float(c))
		print("[{}, {}, {}, {}]".format(q, w, e, f))
		pub.publish(q, w, e, f, float(x), float(y), float(z))
    	
    	
    	     
if __name__ == '__main__':
    try:
          talker()
    except rospy.ROSInterruptException:
          pass
    	
    
    

from __future__ import print_function
import roslib
import sys
import rospy
import cv2
import os

#ROS parameter manager
class paramManager():
    def __init__(self):
        self.params=\
        {   '~port':'/dev/ttyACM0',
            '~baud':115200,
            '~imu_freq':100,
            '~cam_freq':10,
            '~path_to_calib_file':None,
        }
    def load_params(self):
        for key in self.params.keys():
            if rospy.has_param(key):
                self.params[key]=rospy.get_param(key)
        return self.params

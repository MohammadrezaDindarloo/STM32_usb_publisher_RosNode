#!/usr/bin/python
import serial
import time
import struct
import rospy
from sensor_msgs.msg import Image
from aras_usb_imu.msg import aras_vio
from cv_bridge import CvBridge
import cv2
from utils import *


pub_imu = rospy.Publisher('/aras_usb_imu/vio', aras_vio,queue_size=0)
rospy.init_node('aras_usb_imu_node', anonymous=True)

param_manager = paramManager()
param_manager.load_params()

#port = serial.Serial(param_manager.params['~port'], param_manager.params['~baud'], timeout=1)
#cam_transfer_ts = 1000//param_manager.params['~cam_freq']

port = serial.Serial('/dev/ttyACM0', 115200, timeout=1)
#cam_transfer_ts = 1000//param_manager.params['~cam_freq']

#port.write('G2 {}\r'.format(cam_transfer_ts))
#port.write('G1 {}\r'.format(1))

vio = aras_vio()
port.flush()

while not rospy.is_shutdown():
    data=port.read_until( terminator=''.join(['abc\n']).encode('utf-8'))[:-4]
    if(len(data)==8):
        packed_data = struct.unpack('2i',data) 
        camera_ts,aux_encoder=packed_data
        #print(packed_data)
    else:
        print("Failed to receive")
	camera_ts,aux_encoder=[0, 0]

    vio.ts = [camera_ts]
    vio.header.stamp = rospy.Time.now()
    vio.aux_encoder = aux_encoder
    pub_imu.publish(vio)

port.close()

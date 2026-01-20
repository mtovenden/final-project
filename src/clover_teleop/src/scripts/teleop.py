#!/usr/bin/env python3

import rospy
import sys, select, os

# Check if Windows & choose correct imports depending on OS
if os.name == 'nt':
    import msvcrt
else:
    import tty, termios

from clover import srv
from std_srvs.srv import Trigger

e = "Error completing operations"


XY_STEP_SIZE        =     0.1
Z_STEP_SIZE         =     0.1
ANGULAR_STEP_SIZE   =     0.1

def getKey():
    if os.name == 'nt':
        # Check python version
        if sys.version_info[0] >= 3:
            return msvcrt.getch().decode()
        else:
            return msvcrt.getch()

    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''
    
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

if __name__=="__main__":
    if os.name != 'nt':
        settings = termios.tcgetattr(sys.stdin)
    
    rospy.init_node('teleop')
    set_velocity = rospy.ServiceProxy('set_velocity', srv.SetVelocity)
    land = rospy.ServiceProxy('land', Trigger)

    target_x_vel = 0.0
    target_y_vel = 0.0
    target_z_vel = 0.0
    target_w_vel = 0.0

    try:
        while(True):

            print("Current Velocities are: \t X: %s\t Y: %s\t Z: %s\t Angular: %s\t" % (target_x_vel, target_y_vel, target_z_vel, target_w_vel))

            key = getKey()

            if key == "w":
                target_x_vel = target_x_vel + XY_STEP_SIZE

            elif key == "s":
                target_x_vel = target_x_vel - XY_STEP_SIZE
            
            elif key == "a":
                target_y_vel = target_y_vel - XY_STEP_SIZE
            
            elif key == "d":
                target_y_vel = target_y_vel + XY_STEP_SIZE
            
            elif key == "z":
                target_w_vel = target_w_vel - ANGULAR_STEP_SIZE
            
            elif key == "x":
                target_w_vel = target_w_vel + ANGULAR_STEP_SIZE
            
            elif key == "r":
                target_z_vel = target_z_vel + Z_STEP_SIZE
            
            elif key == "f":
                target_z_vel = target_z_vel - Z_STEP_SIZE
            
            elif key == "v":
                target_x_vel = 0.0
                target_y_vel = 0.0
                target_z_vel = 0.0
                target_w_vel = 0.0
            
            elif key == "l":
                land()
            
            else:
                if (key == '\x03'):
                    break
            
            set_velocity(vx = target_x_vel, vy = target_y_vel, vz = target_z_vel, yaw = target_w_vel, frame_id='body', auto_arm = True)
        
    except:
        print(e)
    
    finally:
        set_velocity(vx= 0.0, vy = 0.0, vz = 0.0, yaw = 0.0, frame_id = 'body', auto_arm = True)
    
    if os.name != "nt":
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    
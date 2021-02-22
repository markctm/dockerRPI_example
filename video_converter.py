import os
from moviepy.editor import *
import time
from datetime import datetime





while(1):
    
    time.sleep(1)

    base_dir = os.path.realpath("/home/pi/Images_Cam/")
    directory1=sorted(os.listdir('/home/pi/Images_Cam/'))
    
    
    #print(len(directory))

    if len(directory1)>50:
        
        try:
            os.remove("/home/pi/temp_video/temp_video.mp4")
        except:
            pass
        
        print("New File" + str(len(directory1)))
        delete_num=len(directory1)-50
        
        for i in range(0,delete_num,1):
          
            os.remove("/home/pi/Images_Cam/" + str(directory1[i]))
            print("file removed" + str(directory1[i]))


        base_dir = os.path.realpath("/home/pi/Images_Cam/")
        directory=sorted(os.listdir('/home/pi/Images_Cam/'))
        print(directory)
    
        
        clip = ImageSequenceClip("/home/pi/Images_Cam/", fps=10)
        #timestamp=datetime.now().isoformat()
        clip.write_videofile('/home/pi/temp_video/temp_video.mp4')

        clip.close()

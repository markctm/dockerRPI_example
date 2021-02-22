import io
import time
import picamera
from datetime import datetime

from PIL import Image

with picamera.PiCamera() as camera:
    # Set the camera's resolution to VGA @40fps and give it a couple
    # of seconds to measure exposure etc.
    camera.resolution = (240,180)
    #camera.framerate = 15
    camera.rotation = 0
    time.sleep(2)

       
    
    while(1):
        
        timestamp=datetime.now().isoformat()
        camera.capture("/home/pi/Images_Cam/%s.png" %timestamp)
        time.sleep(1)



from PIL import Image
from PIL import GifImagePlugin


imageObject = Image.open("GIF_1.gif")

print(imageObject.n_frames)

 
path = "./GIF0"
# Display individual frames from the loaded animated GIF file

for frame in range(0,imageObject.n_frames):
    imageObject.seek(frame)
    imageObject.save(f'{path}/{frame}','png')
    #imageObject.show()
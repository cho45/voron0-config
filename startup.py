#!/usr/bin/python3

from luma.core.interface.serial import i2c
from luma.core.render import canvas
from luma.oled.device import ssd1306

device = ssd1306(i2c(port=1, address=0x3C))
device.persist = True

with canvas(device) as draw:
    draw.rectangle(device.bounding_box, outline="black", fill="black")
    draw.text((10, 16), text="Starting...", fill="white")


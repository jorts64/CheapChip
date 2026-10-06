from machine import Pin
import time

led = Pin(15, Pin.OUT)

# unidad de tiempo: duración de punto y
# de separación entre señales
ut = 0.1  
# espacio entre letras 3ut = ut + 2ut
ut2 = 2*ut
# Duración de raya
ut3 = 3*ut
# espacio entre palabras 7Ut = ut + 6ut
ut7 = 6*ut
while True:
    for i in range(3):
        led.value(1)
        time.sleep(ut)
        led.value(0)
        time.sleep(ut)

    time.sleep(ut2)

    for i in range(3):
        led.value(1)
        time.sleep(ut3)
        led.value(0)
        time.sleep(ut)

    time.sleep(ut2)

    for i in range(3):
        led.value(1)
        time.sleep(ut)
        led.value(0)
        time.sleep(ut)

    time.sleep(ut7)


#!/usr/bin/env python3
from time import time

from sense_hat import SenseHat


if __name__ == '__main__':
    sense = SenseHat()
    # Temperature
    name = "temperature.hts221"
    temperature = sense.get_temperature_from_humidity()
    if temperature > 0:
        now = time()
        print("{0}\t{1:.2f}\t{2:.0f}".format(name, temperature, now))
    # Humidity
    name = "humidity.hts221"
    humidity = sense.get_humidity()
    if humidity > 0:
        now = time()
        print("{0}\t{1:.2f}\t{2:.0f}".format(name, humidity, now))
    # Temperature
    name = "temperature.lps25h"
    temperature = sense.get_temperature_from_pressure()
    if temperature > 0:
        now = time()
        print("{0}\t{1:.2f}\t{2:.0f}".format(name, temperature, now))
    # Pressure
    name = "pressure.lps25h"
    pressure = sense.get_pressure()
    if pressure > 0:
        now = time()
        print("{0}\t{1:.2f}\t{2:.0f}".format(name, pressure, now))

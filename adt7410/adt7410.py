#!/usr/bin/env python
# -*- coding: utf-8 -*-

from __future__ import print_function, unicode_literals
from time import time

from raspiutil.sensors import ADT7410


NAME = "temp.adt7410"

if __name__ == '__main__':
    adt = ADT7410(1, 0x48)
    # 16-bit resolution
    adt.resolution = 1
    # Print current temperature
    print("{0}\t{1:.2f}\t{2:.0f}".format(NAME, adt.temperature, time()))

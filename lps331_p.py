#!/usr/bin/env python
# -*- coding: utf-8 -*-

from __future__ import print_function, unicode_literals
from time import time

from raspiutil.sensors import LPS331


NAME = "pressure.lps331"

if __name__ == '__main__':
    lps = LPS331(1, 0x5d)
    try:
        lps.open()
        # Print current pressure
        print("{0}\t{1:.2f}\t{2:.0f}".format(NAME, lps.pressure, time()))
    finally:
        lps.close()

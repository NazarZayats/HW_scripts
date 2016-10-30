#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os

def main():
    value1=raw_input('Enter path: ')
    os.chdir(value1)
    value2 =raw_input('Enter dir name: ')
    value3 =raw_input('Enter NEW name: ')
    os.rename(value2,value3)
    print('Complete')

if __name__ == '__main__':
    main()

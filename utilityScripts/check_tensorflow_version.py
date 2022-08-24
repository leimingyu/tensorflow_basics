#!/usr/bin/env python

import sys
from distutils.version import LooseVersion
import warnings
import tensorflow as tf

# Check TensorFlow Version
assert LooseVersion(tf.__version__) >= LooseVersion('1.0'), 'Please use TensorFlow version 1.0 or newer'

print('\n-----------------------------------------------')
print(f'Python Version : {sys.version_info.major}.{sys.version_info.minor} ')
#print(sys.version)
print('TensorFlow Version: {}'.format(tf.__version__))
print('-----------------------------------------------\n')

# Check for a GPU

print('\n-----------------------------------------------')
print(f'Check available GPUs')
print('-----------------------------------------------\n')
if not tf.test.gpu_device_name():
    warnings.warn('No GPU found.')
else:
    print('Current GPU Device: {}'.format(tf.test.gpu_device_name()))

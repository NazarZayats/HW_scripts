#
#
import os
path_to_directories = raw_input('Enter path: ')
os.chdir(path_to_directories)
old_name = raw_input('Enter directory name: ')
new_name = raw_input('Enter new directory name: ')
os.rename(old_name, new_name)
print 'Complete'

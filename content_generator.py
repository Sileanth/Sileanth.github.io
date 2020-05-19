import os
# subfolders = [ f.path for f in os.scandir(folder) if f.is_dir() ]
subfolders = [ f.name for f in os.scandir('./') if f.is_dir() ]
print(subfolders)
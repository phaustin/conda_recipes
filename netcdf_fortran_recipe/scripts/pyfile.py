import os
from pathlib import Path
import sys

prefix=sys.argv[1]
libpath=Path(prefix)
filelist=libpath.glob('*')
out=[item.name for item in filelist]
print(out[-3:])




    


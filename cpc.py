import os

aliases = "/home/hiromu/.bash_aliases"

if os.path.isfile(aliases):
    print("ok")
else:
    print("no")
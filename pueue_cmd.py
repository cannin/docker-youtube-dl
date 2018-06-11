#!/usr/bin/python

import os
cmd = "pueue add 'youtube-dl --retries 5 --restrict-filenames --continue --no-mtime " + sys.argv[1] + "'"
os.system(cmd)

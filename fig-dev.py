#! /usr/bin/env python2

import yaml
import os
import sys

# http://stackoverflow.com/a/823240/350221
def merge(user, default):
    if isinstance(user,dict) and isinstance(default,dict):
        for k,v in default.iteritems():
            if k not in user:
                user[k] = v
            else:
                user[k] = merge(user[k],v)
    return user

# Load fig.yml into a tree
with open('fig.yml', 'r') as fh:
    default = yaml.load(fh)

# Load fig-dev.yml into a tree
with open('fig-dev.yml', 'r') as fh:
    user = yaml.load(fh)

# Merge the trees
merged_yaml = yaml.dump(merge(user, default))

# Print merged yml into a file.
with open('fig-merged.yml', 'w') as fh:
    fh.write(merged_yaml)

# Run fig with the merged yml
os.system("fig -f fig-merged.yml " + " ".join(sys.argv[1:]))

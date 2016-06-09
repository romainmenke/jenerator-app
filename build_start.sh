#!/bin/bash


# If any commands fail, we want the shell script to exit immediately.
set -e

cd /root/app/Jenerator/

# swift build
swift build -Xcc -fblocks -Xlinker -ldispatch

/root/app/Jenerator/.build/debug/Jenerator

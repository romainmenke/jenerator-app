#!/bin/bash

##
# Copyright IBM Corporation 2016
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##

# This script clones and builds the Kitura sample app.

# If any commands fail, we want the shell script to exit immediately.
set -e

# Clone and build Kitura-Starter-Bluemix
# The Git branch to clone should be set as an environment variable.
# If branch environment var is not set, then using develop as the default value.
if [ -z "$KITURA_BRANCH" ]; then
  KITURA_BRANCH="develop"
fi

echo ">> About to clone branch '$KITURA_BRANCH' for Kitura-Starter-Bluemix"
# Clone Kitura repo
cd /root/app && rm -rf Kitura-Starter-Bluemix && git clone -b $KITURA_BRANCH https://github.com/IBM-Swift/Kitura-Starter-Bluemix.git

# Make the Kitura folder the working directory
cd /root/app/Jenerator

# Build Kitura-Starter-Bluemix
echo ">> About to build Kitura-Starter-Bluemix..."
make
echo ">> Build for Kitura-Starter-Bluemix completed (see above for results)."

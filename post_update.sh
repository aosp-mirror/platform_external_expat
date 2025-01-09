#!/bin/bash

set -e

T="${ANDROID_BUILD_TOP}"
cd $(dirname "$0")

source ${T}/build/envsetup.sh

# Show the commands on the terminal.
set -x

cd expat

./buildconf.sh
./configure

mv -f expat_config.h ../expat_config.h

make

#!/bin/bash

if ! which mips-linux-gnu-gcc-5 >/dev/null 2>&1; then
	apt-get install -yq gcc-5-mips-linux-gnu
fi

mips-linux-gnu-gcc() {
	mips-linux-gnu-gcc-5 $@
}

make ARCH=mips CROSS_COMPILE=mips-linux-gnu- O=./build/mipseb

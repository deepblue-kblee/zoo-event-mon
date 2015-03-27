#!/bin/bash

function checkExit() {
    local EXIT_CODE=$1
	local MSG=$2
	#echo "EXIT_CODE=$EXIT_CODE"
    if [ $EXIT_CODE -ne 0 ]; then
        echo "[FAIL] $MSG"
		exit 1
    else
        echo "[OK] $MSG"
    fi
}


KAZOO_VER=2.0
KAZOO=kazoo-${KAZOO_VER}
KAZOO_TAR=${KAZOO}.tar.gz

if [ ! -d "${KAZOO}" ]; then
	wget https://github.com/python-zk/kazoo/archive/${KAZOO_VER}.tar.gz -O ${KAZOO_TAR}
	checkExit $? "get kazoo"

	tar xzf ${KAZOO_TAR}
	checkExit $? "decompress kazoo tar"

	rm -f ${KAZOO_TAR}
fi

if [ ! -e "kazoo" ]; then
	ln -s ${KAZOO}/kazoo kazoo
fi


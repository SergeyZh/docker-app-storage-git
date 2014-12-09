#!/bin/bash

LOCALPATH=/local
mkdir ${LOCALPATH}

put() {
    git clone ${STORDATA} ${LOCALPATH}/
    cd ${LOCALPATH}
    rm -rf *
    cp -rf /app/* ${LOCALPATH}
    git add *
    git commit -a -m "commit ver ${VER}"
    # Tag last commit
    git tag -a ${VER} -m "version ${VER}"
    git push origin ${VER}
    RETURN=`git log -1 --format=format:%H`
    echo ${RETURN}
}

get() {
    git clone ${STORDATA} ${LOCALPATH}/
    cd ${LOCALPATH}
    git checkout ${VER}
    cp -rf ${LOCALPATH}/* /app/
}

delete() {
    echo "Not implemented"
}

case "$1" in
    put)
	put
	exit 0
	;;
    get)
	get
	exit 0
	;;
    delete)
	delete
	;;
    *)
	echo "Usage: $0 <put|get|delete>"
	exit 2
esac


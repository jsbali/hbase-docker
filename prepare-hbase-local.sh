#!/bin/bash -x

. config-hbase.sh

sudo apt-get update -y

sudo apt-get install $minimal_apt_get_args $HBASE_BUILD_PACKAGES
if [ ! -d "cache" ]; then
    mkdir cache
fi

if [ ! -f cache/"$HBASE_TAR_NAME" ]; then
    curl -SL $HBASE_DIST/hbase-$HBASE_VERSION/$HBASE_TAR_NAME -o cache/$HBASE_TAR_NAME;
fi
tar -x -z -f cache/$HBASE_TAR_NAME && mv hbase-${HBASE_VERSION} hbase

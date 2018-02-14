# This is the definitive site and incredibly slow
HBASE_DIST="http://archive.apache.org/dist/hbase"
# This is a mirror site and faster but every new release breaks all
# existing links.
# HBASE_DIST="https://www-us.apache.org/dist/hbase"

# Prevent initramfs updates from trying to run grub and lilo.
export INITRD=no
export DEBIAN_FRONTEND=noninteractive
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
HBASE_VERSION="0.98.4"
HBASE_TAR_NAME="hbase-0.98.4-hadoop2-bin.tar.gz"

minimal_apt_get_args='-y --no-install-recommends'


## Build time dependencies ##

HBASE_BUILD_PACKAGES="curl"

# Core list from docs
#HBASE_BUILD_PACKAGES="$HBASE_BUILD_PACKAGES "

# Optional:
#HBASE_BUILD_PACKAGES="$HBASE_BUILD_PACKAGES "

## Run time dependencies ##
HBASE_RUN_PACKAGES="openjdk-8-jre-headless"

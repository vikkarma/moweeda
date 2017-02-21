#!/bin/bash
# change to the script dir
BASEDIR=$(dirname $0)
if [ ! -z "$BASEDIR" ]; then
    echo "changing current dir to $BASEDIR"
    cd $BASEDIR
fi

# script usage
usage() {
    echo "`basename $0` " 1>&2
    echo "    [-data_dir        [Default value = $HOME_DIR/stockdata]  " 1>&2 
}

configenv() {
    export MOWEEDA_HOME=/home/vvishwakarma/vikas/moweeda/dist/moweeda
    cd $MOWEEDA_HOME
}

executemoweeda() {
    java -classpath .:$MOWEEDA_HOME/lib/*:$MOWEEDA_HOME/config/*:$MOWEEDA_HOME/moweeda.jar com.moweeda.stats.Moweeda
}

configenv
executemoweeda

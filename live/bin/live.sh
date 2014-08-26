#!/bin/bash

export CATALINA_HOME="/Users/skuro/Development/Backbase/envs/apache-tomcat-7.0.55"
export CATALIN_BASE="${CATALINA_HOME}/live"

function usage(){
    echo "$0 [start|stop]"
}

if [ $# -lt 1 ]
then
    usage
    exit -1
fi

ACTION=$1

function start(){
    ${CATALINA_HOME}/bin/startup.sh
}

function stop(){
    ${CATALINA_HOME}/bin/shutdown.sh
}

case "$ACTION" in
    "start")
        start
        ;;
    "stop")
        stop
        ;;
esac

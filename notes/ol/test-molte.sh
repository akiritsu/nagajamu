#!/bin/bash
#######################################################
# $Name: test-molte.sh	　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　 
# $Version: v1.0 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　
# $Function: test MOLTE
# $Author: DeerRIDER
# $Create Date: 2016-09-22 
# $Description: basic tests
#######################################################


SHELL_NAME="test-molte.sh"
SHELL_DIR=""
SHELL_LOG="${SHELL_DIR}/${SHELL_NAME}.log"
LOCK_FILE="/tmp/${SHELL_NAME}.lock"
PACKAGE_DIR=""


log_output(){
　　LOG_INFO=$1
　　echo "$(date "+%Y-%m-%d") $(date "+%H-%M-%S") : ${SHELL_NAME} : ${LOG_INFO}" >> ${SHELL_LOG}
}

usage(){
　　echo """Usage: 
sh test-molte.sh [path/to/file] [matlab module]
　　
"""
}

run_molte(){
cd $1
sh /usr/local/MATLAB/R2018a/bin/matlab -nosplash -nodesktop -r $2
}

main(){
　　if [ -z $1 ]; then
		usage
　　else
		run_molte
　　fi
}

main $1

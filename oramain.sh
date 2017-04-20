#!/bin/bash

# Created: 17.04.2017
# Purpose: Main script


[[ -z "$@" ]] && { echo "Call script with argument(s)!"; exit 1; }

# INITIALIZE % PREPARE
source ./lib/toolkit

SID=$1


ORACLE_UNQNAME=cdb1
ORACLE_SID=$SID
ORACLE_BASE=/home/orcldb/app/orcldb
ORACLE_HOSTNAME=oraclelinux72server1
ORACLE_HOME=/home/orcldb/app/orcldb/product/12.2.0/dbhome_1

#Main
$ORACLE_HOME/bin/sqlplus -s /nolog << EOF
set echo off trims on feedback off heading off lines 1000 pagesize 0
connect / as sysdba
select 'DB status is '||open_mode from v\$database;
exit;
EOF


# Post actions

# end of script


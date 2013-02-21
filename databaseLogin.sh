#!/bin/bash
# How to use:
# Logs into postgres server using the .pgpass files in the home directory
# Arguments:
#   filename - optional, provide a .sql file to be processed by the server
HOST="ec2-54-243-242-213.compute-1.amazonaws.com"
DATABASE="d96h7v5b01q6nf"
USERNAME="juounnteqqzsqc"
COMMAND_STRING="-h $HOST -d $DATABASE -U $USERNAME --no-password"
if [ -n "$1" ]
	then 
		FILE=$1
		COMMAND_STRING+=" -f $FILE"
fi
psql $COMMAND_STRING
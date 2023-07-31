#!/bin/bash

function handler_int() {
	echo 'You sent SIGINT'
}

function handler_term() {
	echo 'You sent SIGTERM'
}

function handler_tstp() {
	echo 'You sent SIGTSTP'
}

function handler_hup() {
	echo "You sent SIGHUP, time $(date +%H:%M:%S)" | tee -a sighup_log
}

function handler_winch() {
	echo "You sent SIGWINCH"
}

trap handler_int SIGINT
trap handler_term SIGTERM
trap handler_tstp SIGTSTP
trap handler_hup SIGHUP
trap handler_winch SIGWINCH

while true; do
	echo 'App is running'
	sleep 1
	exec $@
done

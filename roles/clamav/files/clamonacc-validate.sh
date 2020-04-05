#!/bin/bash
# Check we cannot cat a sample virus signature file, notify if we can

set -u

sleep 30 # give clamonacc a reasonable chance to start up

TEST_FILE=~/Downloads/eicar.com

>&2 echo "${TEST_FILE} must exist for clamonacc check"
ls ${TEST_FILE}

RESULT=$?
if [ ${RESULT} -ne 0 ]; then
    notify-send "Cannot check clamonacc" --urgency critical --icon face-worried
fi

>&2 echo "Access to ${TEST_FILE} should be prohibited by clamonacc" 
cat ${TEST_FILE}

RESULT=$?
if [ ${RESULT} -eq 0 ]; then
    notify-send "clamonacc failed to block" --urgency critical --icon face-crying
fi

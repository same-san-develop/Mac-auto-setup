#!/bin/bash

readonly SUCCESS_FORMAT='\033[32m%s\033[m\n'
readonly SUCCESS_MESSAGE='Completed install .bash_profile.'

cat .bash_profile >> ~/.bash_profile
source ~/.bash_profile
printf $SUCCESS_FORMAT "$SUCCESS_MESSAGE"

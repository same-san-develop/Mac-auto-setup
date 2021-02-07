#!/bin/bash

FORMAT='\033[32m%s\033[m\n'
SUCCESS_MESSAGE='Completed install .bash_profile.'

cat .bash_profile >> ~/.bash_profile
source ~/.bash_profile

printf $FORMAT "$SUCCESS_MESSAGE"

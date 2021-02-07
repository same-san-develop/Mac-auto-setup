#!/bin/bash

FORMAT='\033[32m%s\033[m\n'
SUCCESS_MESSAGE='Completed install mkmovie commands.'

mkdir ~/bin
cp mkmovie ~/bin/

printf $FORMAT "$SUCCESS_MESSAGE"

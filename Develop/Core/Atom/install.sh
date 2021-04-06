#!/bin/bash

EXPLAIN="本処理の実行前に、「Develop/Core/Atom/config.cson」 の {Gist ID} と {Personal Access Token} を正しいものに置き換えてください。すでに完了していますか？[y/N]"

read  -p "$EXPLAIN" answer
case $answer in
    y)
        apm install sync-settings
        cat ./config.cson >> ~/.atom/config.cson
        printf '\033[32m%s\033[m\n' 'Completed Atom Sync-Setting.'
        ;;
    *)
        printf '\033[31m%s\033[m\n' 'Abort.'
        ;;
esac

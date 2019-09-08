#!/bin/bash

dein_path=~/.cache/dein
if [ -d $dein_path ]; then
    which curl 1>/dev/null 2>/dev/null
    if [ $? -eq 0 ]; then
        #curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_installer.sh
        val='ok.sh'
        sh $val
    else
        echo 'curl is not installed'
    fi
    echo 'OK'
else
    echo $dein_path 'NOT FOUND'
fi


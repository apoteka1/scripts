#!/usr/local/bin

#latest downloads

(
    declare -a RESULTS=()
    IFS='
'
    for line in $(ls -1th /Users/Me/Downloads | head -10); do
        RESULTS+=($line)
    done

    select file in ${RESULTS[@]}; do
        open "/Users/Me/Downloads/$file"
    done

)

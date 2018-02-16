#!/bin/bash

for fn in `/bin/ls md/` ; do
    b=${fn%.*}
    toc=""
    if [[ $b =~ events ]]; then
        pandoc --template template.html -T "ASA CT" -f \
           markdown+header_attributes -t html --smart --toc -o html/$b.html md/$fn ;
    else
        pandoc --template template.html -T "ASA CT" -f \
           markdown+header_attributes -t html --smart -o html/$b.html md/$fn ;
    fi
    
done


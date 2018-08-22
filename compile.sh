#!/bin/bash

for fn in `/bin/ls md/` ; do
    b=${fn%.*}
    toc=""
    if [[ $b =~ events ]]; then
        pandoc --template template.html -T "ASA CT" -f \
           markdown+header_attributes+smart -t html --toc -o html/$b.html md/$fn ;
    else
        pandoc --template template.html -T "ASA CT" -f \
           markdown+header_attributes+smart -t html -o html/$b.html md/$fn ;
    fi
    
done


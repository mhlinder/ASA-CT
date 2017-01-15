#!/bin/bash

for fn in `/bin/ls md/` ; do
    b=${fn%.*}
    pandoc --template template.html -T "ASA CT" -f \
           markdown+header_attributes -t html --smart -o html/$b.html md/$fn ;
done


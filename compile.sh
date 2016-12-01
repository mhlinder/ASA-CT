#!/bin/bash

for fn in `/bin/ls md/` ; do
    b=${fn%.*}
    pandoc --template template.html -T "ASA CT" --smart -o html/$b.html md/$fn ;
done


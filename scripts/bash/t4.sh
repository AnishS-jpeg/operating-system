#!/bin/bash
for f in *.txt; do
    if [[ "$f" != OLD_* ]]; then
        mv "$f" "OLD_$f"
        echo "Renamed $f to OLD_$f"
    fi
done
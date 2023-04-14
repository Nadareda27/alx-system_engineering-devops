#!/bin/bash

for file in *.html; do
    if [ "$file" -nt "../$file" ]; then
        cp "$file" ../
        echo "Copied $file"
    else
        echo "Skipping $file"
    fi
done

#!/bin/bash
for file in ../docs/*.md; do
    # get the name of the file without extenstions
    filename=$(basename -- "$file")
    extension="${filename##*.}"
    filename="${filename%.*}"

    # generate the PDF file using npm package mardkdown-pdf
    markdown-pdf "$file" -o "../pdf-docs/$filename.pdf"
done
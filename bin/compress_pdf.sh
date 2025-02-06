#! /bin/bash
# Compress all pdfs in a subdirectory of the pwd.
# This can be used to massively reduce storage.
# Not extensively tested: Use at risk. Definitly copy the directory, run the
# script and then open a few pdfs to make sure everything didn't break.
OIFS="$IFS"
IFS=$'\n'
FILES="$(find . -type f -name "*.pdf")"
initsize=0
endsize=0

for file in $FILES; do
    echo "Processing $file"
    echo "Initial size is $(du -h $file | awk '{print $1}')"

    infilesize=$(du $file | awk '{print $1}')
    initsize=$(($initsize + $infilesize))

    outfile="$(dirname -- $file)/output.pdf" 
    if gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook \
           -dQUIET -dDetectDuplicateImages -o "$outfile" "$file" ; then
        rm "$file"
        mv "$outfile" "$file"
        endsize=$(($endsize + $(du $file | awk '{print $1}')))
        echo "Final size is $(du -h "$file" | awk '{print $1}')"
    else
        rm "$outfile" || true
        endsize=$(($endsize + $infilesize))
    fi
done

echo "Processing complete."
echo "Initial total size of pdfs in dir: $(numfmt --to=iec $initsize)."
echo "Final total size of pdfs in dir: $(numfmt --to=iec $endsize)."

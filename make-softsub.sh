#!/bin/bash
###
### makes softsubs from hardsubs with VideoSubFinder and tesseract.
###
### Usage:
###   make-softsubs <input> <output>
###
### Options:
###   <input>   Video with hardsubs to OCR.
###   <output>  Sub file to write - .ass or .srt (.ass reccomended)
###   -h        Show this message.

help() {
    sed -rn 's/^### ?//;T;p' "$0"
}
if [[ $# == 0 ]] || [[ "$1" == "-h" ]]; then
    help
    exit 1
fi

echo "making images to OCR"
VideoSubFinderWXW --clear_dirs --run_search --create_cleared_text_images --top_video_image_percent_end=0.2 -i "$1" -o .

echo "Images done"
echo "Starting OCR"

for img in TXTImages/*
do
imgout="${img//TXTImages\/}"
tesseract -l eng "$img" "TXTResults/$imgout"
done


echo "making subs"
VideoSubFinderWXW -o . --create_sub_from_txt_results="$2"
echo "done!"

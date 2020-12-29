# make-softsub
quick'n dirty script to OCR hardsubs into softsubs.

## Requirements

* [VideoSubFinder](https://sourceforge.net/projects/videosubfinder/) (unfortunately windows-only) in PATH
* [Tesseract OCR](https://github.com/tesseract-ocr/tesseract/)

## Usage

`./make-softsub.sh input.mkv output.ass`

Outputs to SRT and ASS.
ASS is reccomended due to more accurate timing.

New directories will be created in your current working directory by VideoSubFinder.

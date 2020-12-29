# make-softsub
quick'n dirty script to OCR hardsubs into softsubs.

## Requirements

* [VideoSubFinder](https://sourceforge.net/projects/videosubfinder/) (unfortunately windows-only) in PATH
* [Tesseract OCR](https://github.com/tesseract-ocr/tesseract/)
* Aegisub (not technically required, but useful to go through and check the results)

## Usage

`./make-softsub.sh input.mkv output.ass`

New directories will be created in your current working directory.
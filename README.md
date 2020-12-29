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

Outputting to .ass leaves trailing \Ns for me. The thing you want to get rid of is `\\N\r`.

I find-and-replaced it in a text editor, but you could also do `cat input.ass | tr -d '\\N\r' > output.ass` for a CLI method.`

You should probably fix any OCR errors or inaccurate timing now.

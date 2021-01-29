# make-softsub
quick'n dirty script to OCR hardsubs into softsubs.

## Requirements

* [VideoSubFinder](https://sourceforge.net/projects/videosubfinder/) (unfortunately windows-only) in PATH
* Tesseract OCR - [windows builds](https://github.com/UB-Mannheim/tesseract/wiki)

## Usage

`./make-softsub.sh input.mkv output.ass`

The powershell script and the bash script both do the same things in the same ways, so it doesn't matter which one you use.
The only real difference is the bash script was written first because that's what I'm more comfortable with.

Outputs to SRT and ASS.
ASS is reccomended due to more accurate timing.

New directories will be created in your current working directory by VideoSubFinder.
Don't run multiple instances of the script at the same time in the same directory, or they'll conflict with each other.

Border for VideoSubFinder to detect in is hardcoded because I can't be asked to add a flag for it.

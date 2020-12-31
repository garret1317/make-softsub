#!/usr/bin/env pwsh
$video=$args[0]
$subs=$args[1]
Write-Host "making images to OCR"
VideoSubFinderWXW --clear_dirs --run_search --create_cleared_text_images --top_video_image_percent_end=0.2 -i "$video" -o . | Out-Null


Write-Host "Images done"
Write-Host "Starting OCR"

Get-Childitem -Path "TXTImages/" -file |
Foreach-Object {
$ye=$_.Name # if you put it in a variable it magically starts working. can't think of a good name
tesseract -l eng "TXTImages/$ye" "TXTResults/$ye"
}

Write-Host "making subs"
VideoSubFinderWXW -o . --create_sub_from_txt_results="$subs" | Out-Null
Write-Host "done!"
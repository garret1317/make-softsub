#!/usr/bin/env pwsh

Write-Host "making images to OCR"
VideoSubFinderWXW --clear_dirs --run_search --create_cleared_text_images --top_video_image_percent_end=0.2 -i "$Args[0]" -o .
Write-Host "yeeet"

Write-Host "Images done"
Write-Host "Starting OCR"

Get-Childitem -Path "TXTImages/*" -file |
Foreach-Object {
echo $_.Name
tesseract -l eng "$_.Name" "TXTResults/$imgout"
}

Write-Host "making subs"
VideoSubFinderWXW -o . --create_sub_from_txt_results="$Args[1]"

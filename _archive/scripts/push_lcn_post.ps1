# Script to push the LCN Video Comparison Tool blog post

# Define the file path
$filePath = "_posts/2025-03-22-LCN-Video-Comparison-Tool.md"
$imagePath = "media/eir-data-visualization.png"

# Add, commit, and push
git add "$filePath" "$imagePath"
git commit -m "Update LCN Video Comparison Tool blog post"
git push origin main

Write-Host "LCN Video Comparison Tool blog post pushed successfully" -ForegroundColor Green 
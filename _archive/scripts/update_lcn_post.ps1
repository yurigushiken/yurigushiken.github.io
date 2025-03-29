# Update the LCN Video Comparison Tool blog post

# First add the updated content
git add _posts/2025-03-22-LCN-Video-Comparison-Tool.md

# Commit the content changes first
git commit -m "Update date in LCN Video Comparison Tool post"

# Now rename the file to match the date
git mv _posts/2025-03-22-LCN-Video-Comparison-Tool.md _posts/2023-03-22-LCN-Video-Comparison-Tool.md

# Commit the rename
git commit -m "Rename LCN post file to match date in content"

# Push all changes
git push origin main

Write-Host "LCN post updated and pushed successfully" -ForegroundColor Green 
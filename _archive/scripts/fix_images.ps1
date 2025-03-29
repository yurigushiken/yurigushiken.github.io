# Script to fix image URLs in the Teachable Machine post

# Define the file path
$filePath = "_posts/2025-01-26-Teaching-Googles-Teachable-Machine-to-Elementary-School-Students.md"

# Read the current content
$content = Get-Content -Path $filePath -Raw

# Replace the image URLs with properly encoded versions
$content = $content -replace 'friendsai-20250113_113847%20\(1\).jpg', 'friendsai-20250113_113847%20%281%29.jpg'
$content = $content -replace 'friendsai-20250113_115215%20\(1\).jpg', 'friendsai-20250113_115215%20%281%29.jpg'

# Write the updated content back to the file
Set-Content -Path $filePath -Value $content -NoNewline

# Add, commit, and push
git add "$filePath"
git commit -m "Fix image URLs in Teachable Machine post"
git push origin main

Write-Host "Image URLs fixed and changes pushed successfully" -ForegroundColor Green 
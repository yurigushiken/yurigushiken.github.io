# Script to update file content and push to GitHub

# Define the file path
$filePath = "_posts/2025-03-04-Columbia-AI-Summit-poster-contribution.md"

# Read the current content
$content = Get-Content -Path $filePath -Raw

# Add a space at the end to force a change
$content = $content + " "

# Write back to the file
Set-Content -Path $filePath -Value $content -NoNewline

# Add, commit, and push
git add "$filePath"
git commit -m "Update Columbia AI Summit post content with latest changes"
git push origin main

Write-Host "File updated and changes pushed successfully" -ForegroundColor Green 
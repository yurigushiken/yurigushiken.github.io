# Script to force update file and push changes to GitHub

# Read the current content and write it back to ensure changes are saved
$filePath = "_posts/2025-03-04-Columbia-AI-Summit-poster-contribution.md"
$content = Get-Content -Path $filePath -Raw
Set-Content -Path $filePath -Value $content -NoNewline

# Add the file
git add "$filePath"

# Commit with message
git commit -m "Update Eye-Track-ML project description content"

# Push changes to GitHub
git push origin main

# Print success message
Write-Host "Content update forced and pushed successfully" -ForegroundColor Green 
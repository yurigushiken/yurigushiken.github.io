# Script to push paragraph break changes to GitHub

# Define the file path
$filePath = "_posts/2025-03-04-Columbia-AI-Summit-poster-contribution.md"

# Add, commit, and push
git add "$filePath"
git commit -m "Add paragraph breaks to improve readability of Columbia AI Summit post"
git push origin main

Write-Host "Paragraph breaks added and changes pushed successfully" -ForegroundColor Green 
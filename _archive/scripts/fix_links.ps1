# Script to push link fixes to the Columbia AI Summit post

# Define the file path
$filePath = "_posts/2025-03-04-Columbia-AI-Summit-poster-contribution.md"

# Add, commit, and push
git add "$filePath"
git commit -m "Convert plain URLs to clickable links with descriptive fragments in Columbia AI Summit post"
git push origin main

Write-Host "Link fixes pushed successfully" -ForegroundColor Green 
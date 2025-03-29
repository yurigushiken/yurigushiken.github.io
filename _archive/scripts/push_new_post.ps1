# Script to push new blog post to GitHub

# Define the file path
$filePath = "_posts/2025-01-26-Teaching-Googles-Teachable-Machine-to-Elementary-School-Students.md"

# Add, commit, and push
git add "$filePath"
git commit -m "Add new post about teaching Google's Teachable Machine to elementary students"
git push origin main

Write-Host "New post added and pushed successfully" -ForegroundColor Green 
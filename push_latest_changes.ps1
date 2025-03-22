# Script to push latest changes to the Teachable Machine post

# Define the file path
$filePath = "_posts/2025-01-26-Teaching-Googles-Teachable-Machine-to-Elementary-School-Students.md"

# Add, commit, and push
git add "$filePath"
git commit -m "Update wording in Teachable Machine post"
git push origin main

Write-Host "Latest changes pushed successfully" -ForegroundColor Green 
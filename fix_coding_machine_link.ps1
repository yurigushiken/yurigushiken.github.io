# Script to fix the Coding Machine link and push changes

# Define the file path
$filePath = "_posts/2025-03-11-Guest-Lecture-BBSN-5022-Eye-Tracking.md"

# Add, commit, and push
git add "$filePath"
git commit -m "Fix link to Coding Machine post with correct URL format"
git push origin main

Write-Host "Link fix pushed successfully" -ForegroundColor Green 
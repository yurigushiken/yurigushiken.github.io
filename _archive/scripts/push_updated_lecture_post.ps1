# Script to push updates to the guest lecture blog post

# Define the file path
$filePath = "_posts/2025-03-11-Guest-Lecture-BBSN-5022-Eye-Tracking.md"

# Add, commit, and push
git add "$filePath"
git commit -m "Update content for Guest Lecture BBSN 5022 post"
git push origin main

Write-Host "Guest lecture post updates pushed successfully" -ForegroundColor Green 
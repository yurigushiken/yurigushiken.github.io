# Script to fix image path in guest lecture post
$filePath = "_posts/2025-03-11-Guest-Lecture-BBSN-5022-Eye-Tracking.md"

# Add the file, commit, and push
git add "$filePath"
git commit -m "Fix image path in Guest Lecture post"
git push origin main

Write-Host "Image path fix pushed successfully" -ForegroundColor Green 
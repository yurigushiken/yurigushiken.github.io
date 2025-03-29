# Script to push the guest lecture blog post to GitHub

# Define the file path
$filePath = "_posts/2025-03-11-Guest-Lecture-BBSN-5022-Eye-Tracking.md"

# Add, commit, and push
git add "$filePath"
git commit -m "Add new post about Guest Lecture in BBSN 5022 on Eye-Tracking & Dynamic Data Analysis"
git push origin main

Write-Host "Guest lecture post pushed successfully" -ForegroundColor Green 
# Script to add and push the Teachable Machine images to GitHub

# Add all the image files
git add "media/friendsai-20250113_113847 (1).jpg"
git add "media/friendsai-20250113_114749.jpg"
git add "media/friendsai-20250113_115215 (1).jpg"

# Commit and push
git commit -m "Add Teachable Machine images"
git push origin main

Write-Host "Images added and pushed successfully" -ForegroundColor Green 
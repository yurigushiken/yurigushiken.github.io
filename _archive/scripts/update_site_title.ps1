# Update Site Title Script

# Add the config file
git add _config.yml

# Commit with descriptive message
git commit -m "Change site title to 'Yuri Gushiken'"

# Push to GitHub
git push origin main

# Confirmation message
Write-Host "Site title updated successfully." -ForegroundColor Green
Write-Host "Changes should be visible on the site within a few minutes after GitHub Pages rebuilds." -ForegroundColor Cyan 
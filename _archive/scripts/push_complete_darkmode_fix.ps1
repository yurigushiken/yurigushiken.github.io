# Complete Dark Mode Fix Script

# Add all necessary files
git add _layouts/default.html
git add _layouts/home.html
git add _layouts/post.html
git add _includes/social.html
git add _sass/custom-dark.scss
git add assets/css/style.scss

# Commit with descriptive message
git commit -m "Fix dark theme implementation and navigation menu"

# Push to GitHub
git push origin main

# Confirmation message
Write-Host "Dark theme fixes complete." -ForegroundColor Green
Write-Host "Changes should be visible on the site within a few minutes after GitHub Pages rebuilds." -ForegroundColor Cyan 
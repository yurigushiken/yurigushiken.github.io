# Add the changed files
git add _sass/minima-customizations.scss
git add assets/css/style.scss

# Commit with a clear message
git commit -m "Fix website styling with proper Jekyll theme structure"

# Push to GitHub
git push origin main

Write-Host "Styling changes pushed. The website should display correctly after GitHub Pages rebuilds." -ForegroundColor Green 
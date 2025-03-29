# Create the content for the file
$content = @'
---
---

@import "minima";
@import "custom-dark";
'@

# Write the content to the file
Set-Content -Path "assets/css/style.scss" -Value $content -Force

# Verify the file exists and has content
Get-Content "assets/css/style.scss"

# Add to git and commit
git add assets/css/style.scss
git commit -m "Fix style.scss with proper Jekyll frontmatter"
git push origin main

Write-Host "Style.scss has been fixed and pushed to GitHub." -ForegroundColor Green 
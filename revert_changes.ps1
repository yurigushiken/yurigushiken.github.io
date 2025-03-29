git rm assets/css/main.scss
git rm _includes/head.html
git rm _layouts/home.html
git rm _layouts/post.html
git commit -m "Revert dark theme and tag styling changes"
git push origin main
Write-Host "Reverted all theme changes" 
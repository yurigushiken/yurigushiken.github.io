# List of scripts to keep in the root directory
$scriptsToKeep = @(
    "cleanup_repository.ps1",  # This script
    "fix_styling.ps1"  # The most recent styling fix script
)

# Get all PowerShell scripts in the root directory
$allScripts = Get-ChildItem -Path "*.ps1" -File

# Move old scripts to archive
foreach ($script in $allScripts) {
    if ($scriptsToKeep -notcontains $script.Name) {
        Write-Host "Moving $($script.Name) to _archive/scripts" -ForegroundColor Yellow
        Move-Item -Path $script.FullName -Destination "_archive/scripts/" -Force
    }
    else {
        Write-Host "Keeping $($script.Name) in root directory" -ForegroundColor Green
    }
}

# Add changes to git
git add .
git commit -m "Clean up repository: archive old scripts and remove temporary files"
git push origin main

Write-Host "Repository cleanup complete!" -ForegroundColor Green 
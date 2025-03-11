# ==============================================================
# Script: push_changes.ps1
# Purpose: Push local Git changes to GitHub
# Author: [Your Name]
# Date Created: 2025-03-11
# ==============================================================

<#
.SYNOPSIS
    Pushes local Git changes to GitHub.

.DESCRIPTION
    This script pushes all committed changes to the GitHub repository.
    It can be used after other scripts that add or modify files.

.PARAMETER branch
    The Git branch to push to (default: main)

.EXAMPLE
    .\push_changes.ps1
    .\push_changes.ps1 -branch "develop"
#>

param (
    [Parameter(Mandatory=$false)]
    [string]$branch = "main"
)

# Show current Git status before pushing
Write-Host "Current Git Status:" -ForegroundColor Cyan
git status

# Push changes to GitHub
Write-Host "`nPushing changes to GitHub ($branch branch)..." -ForegroundColor Yellow
git push origin $branch

# Show status after push
Write-Host "`nStatus after push:" -ForegroundColor Cyan
git status 
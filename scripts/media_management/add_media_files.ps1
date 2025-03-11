# ==============================================================
# Script: add_media_files.ps1
# Purpose: Add media files to the website and commit them to Git
# Author: [Your Name]
# Date Created: 2025-03-11
# ==============================================================

<#
.SYNOPSIS
    Adds media files to the website and commits them to Git.

.DESCRIPTION
    This script adds specified media files to the media directory,
    commits them to Git, and optionally pushes them to GitHub.

.PARAMETER files
    Array of file paths to add to the media directory.

.EXAMPLE
    .\add_media_files.ps1 -files @("C:\path\to\image1.jpg", "C:\path\to\image2.png")
#>

param (
    [Parameter(Mandatory=$true)]
    [string[]]$files
)

# Ensure media directory exists
if (-not (Test-Path -Path "media")) {
    New-Item -Path "media" -ItemType Directory -Force
    Write-Host "Created media directory"
}

# Process each file
foreach ($file in $files) {
    # Get just the filename
    $filename = Split-Path -Path $file -Leaf
    $destination = "media/$filename"
    
    # Copy file to media directory
    Copy-Item -Path $file -Destination $destination -Force
    Write-Host "Added media file: $destination"
    
    # Add to Git
    git add $destination
}

# Commit to Git
git commit -m "Add media files: $($files.Count) files"

Write-Host "Committed to Git. To push to GitHub, use: git push origin main" 
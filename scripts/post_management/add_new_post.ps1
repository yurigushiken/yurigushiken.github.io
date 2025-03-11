# ==============================================================
# Script: add_new_post.ps1
# Purpose: Add a new post to the Jekyll website and commit it to Git
# Author: [Your Name]
# Date Created: 2025-03-11
# ==============================================================

<#
.SYNOPSIS
    Adds a new blog post to the Jekyll website.

.DESCRIPTION
    This script adds a new blog post file to the _posts directory with proper
    Jekyll frontmatter, commits it to Git, and optionally pushes it to GitHub.

.PARAMETER title
    The title of the blog post.

.PARAMETER date
    The publication date in YYYY-MM-DD format.

.PARAMETER categories
    Space-separated list of categories for the post.

.EXAMPLE
    .\add_new_post.ps1 -title "My New Post" -date "2025-04-01" -categories "project research"
#>

param (
    [Parameter(Mandatory=$true)]
    [string]$title,
    
    [Parameter(Mandatory=$true)]
    [string]$date,
    
    [Parameter(Mandatory=$false)]
    [string]$categories = "blog"
)

# Format the filename
$date_parts = $date.Split("-")
$year = $date_parts[0]
$filename = "$date-" + $title.Replace(" ", "-") + ".md"
$filepath = "_posts/$filename"

# Create frontmatter
$frontmatter = @"
---
layout: post
title: "$title"
date: $date 12:00:00 -0400
categories: $categories
---

<!-- Add content here -->

"@

# Write the file
Set-Content -Path $filepath -Value $frontmatter

Write-Host "Created new post: $filepath"

# Git operations
git add $filepath
git commit -m "Add new post: $title"

Write-Host "Committed to Git. To push to GitHub, use: git push origin main" 
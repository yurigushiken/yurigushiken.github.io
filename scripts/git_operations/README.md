# Git Operations Scripts

This directory contains scripts for Git-related tasks like pushing changes to GitHub.

## Available Scripts

- **push_changes.ps1**: Pushes local Git changes to GitHub

## Usage Examples

### Pushing changes to GitHub

```powershell
powershell -File scripts/git_operations/push_changes.ps1
powershell -File scripts/git_operations/push_changes.ps1 -branch "develop"
```

## Notes

- Always review changes with `git status` before pushing to GitHub
- These scripts assume you have Git configured properly
- Scripts do not handle authentication - ensure your GitHub credentials are set up
- Use caution when pushing to branches other than your own 
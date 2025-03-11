# Post Management Scripts

This directory contains scripts for creating, updating, and managing blog posts.

## Available Scripts

- **add_new_post.ps1**: Creates a new blog post with proper Jekyll frontmatter

## Usage Examples

### Creating a new post

```powershell
powershell -File scripts/post_management/add_new_post.ps1 -title "My New Post" -date "2025-04-01" -categories "project research"
```

## Notes

- All posts are created in the `_posts` directory with the proper Jekyll naming convention
- Scripts do not modify existing post content, only create new files
- Always review the generated frontmatter before pushing to GitHub 
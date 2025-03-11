# Media Management Scripts

This directory contains scripts for handling media files like images, PDFs, and other assets.

## Available Scripts

- **add_media_files.ps1**: Adds media files to the website and commits them to Git

## Usage Examples

### Adding media files

```powershell
powershell -File scripts/media_management/add_media_files.ps1 -files @("C:\path\to\image1.jpg", "C:\path\to\image2.png")
```

## Notes

- All media files are placed in the `media` directory
- Scripts do not modify existing media, only add new files
- Use descriptive filenames for media to avoid conflicts
- Consider image optimization before adding large files 
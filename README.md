# Yuri Gushiken Personal Website

A professional portfolio site built with Jekyll and GitHub Pages.

**Live site:** [https://yurigushiken.github.io/](https://yurigushiken.github.io/)

## Overview

This repository contains the source code for Yuri Gushiken's professional website. The site showcases Yuri's academic work, research projects, and professional background.

## Site Structure

```
yurigushiken.github.io/
├── _includes/           # Reusable page components
├── _layouts/            # Page layout templates
├── _posts/              # Blog post content
├── _sass/               # SCSS style components
├── assets/              # Static assets
│   └── css/             # Main CSS files
├── media/               # Images and documents
├── _config.yml          # Site configuration
├── about.md             # About page
└── index.markdown       # Home page
```

## Theme Customization

The site uses the Jekyll Minima theme with a custom dark mode implementation.

- `_sass/minima-customizations.scss` contains all dark theme styling
- `assets/css/style.scss` imports both the base theme and customizations

## Adding Content

### Creating Blog Posts

1. Create a Markdown file in the `_posts` directory with the format:
   ```
   YYYY-MM-DD-title-with-hyphens.md
   ```

2. Add front matter at the top of the file:
   ```yaml
   ---
   layout: post
   title: "Your Post Title"
   date: YYYY-MM-DD HH:MM:SS -0400
   categories: category1 category2
   ---
   ```

3. Write your post content in Markdown format below the front matter.

### Adding Media

1. Place media files in the `/media` directory
2. Reference them in posts using:
   ```markdown
   ![Alt text](/media/filename.jpg)
   ```

## Development Workflow

### Local Development (Optional)

1. Clone the repository
2. Install Jekyll and dependencies:
   ```
   gem install bundler jekyll
   bundle install
   ```
3. Run the site locally:
   ```
   bundle exec jekyll serve
   ```

### Direct GitHub Editing

1. Make changes to files directly in GitHub
2. Commit changes with descriptive messages
3. GitHub Pages will automatically rebuild the site

## Deployment

The site uses GitHub Pages for deployment. When changes are pushed to the main branch, GitHub automatically builds and publishes the site.

## Styling Guidelines

- Maintain dark theme aesthetics
- Use the existing color scheme (dark backgrounds, light text)
- Keep site structure consistent
- Ensure all pages are mobile-responsive

## Maintenance Tips

- Update CV in `/media` directory as needed
- Regularly check for broken links
- Keep the repository clean by removing temporary files
- Test the site after making significant changes

## License

All rights reserved. The content of this website is not licensed for public use.

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

If you prefer to write and preview your changes on your own computer before making them live, follow these steps:

1.  **Clone the repository:**
    If you haven't already, get a local copy of the project:
    ```bash
    git clone https://github.com/yurigushiken/yurigushiken.github.io.git
    cd yurigushiken.github.io
    ```
    (If you've already cloned it, just navigate to your local project directory using `cd your-project-directory-path` in your terminal.)

2.  **Install dependencies:**
    (Ensure you have Ruby and Bundler installed. You typically only need to run `bundle install` once to set up the project, and then again if the `Gemfile` (which lists project dependencies) changes.)
    ```bash
    # If you haven't installed the bundler gem system-wide yet:
    # gem install bundler
    bundle install
    ```
    This command reads the `Gemfile` and installs Jekyll and other necessary gems.

3.  **Create or modify content:**
    Make your changes, such as creating a new blog post in the `_posts` directory (see the "Adding Content" -> "Creating Blog Posts" section above), editing pages, or updating styles.

4.  **Run the site locally (to preview your changes):**
    This command starts a local web server. You can then open your web browser and go to `http://localhost:4000` (or `http://127.0.0.1:4000`) to see your site as it would appear.
    ```bash
    bundle exec jekyll serve
    ```
    Most changes you save will automatically update in the browser. Press `Ctrl+C` in the terminal window where `jekyll serve` is running to stop the local server.

5.  **Publishing Your Changes to the Live Site:**
    Once you are satisfied with your local changes and ready to make them live on `https://yurigushiken.github.io/`:

    a.  **Stage your changes:** In your terminal (from the project root directory), tell Git which files you want to include in your next "commit" (a snapshot of your work).
        *   To add a specific file (for example, a new post you just created):
            ```bash
            git add _posts/YYYY-MM-DD-your-new-post-title.md
            ```
        *   Or, to add all files that you have changed or created in the project:
            ```bash
            git add .
            ```

    b.  **Commit your changes:** Save your staged changes to your local Git history with a descriptive message. This message helps you and others understand what was changed and why.
        ```bash
        git commit -m "Your descriptive commit message (e.g., Add new blog post about Jekyll, Fix typo on about page)"
        ```

    c.  **Push your changes to GitHub:** Send your committed changes from your local computer to the `main` branch on the remote GitHub repository.
        ```bash
        git push origin main
        ```

    After this `git push` command, GitHub Pages will automatically detect the new commits on the `main` branch. It will then rebuild your Jekyll site and deploy the updates. Your new content or changes should be live on your website within a minute or two.

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

<!-- Trivial change to trigger GitHub Pages rebuild -->

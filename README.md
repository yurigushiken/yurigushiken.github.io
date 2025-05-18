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

### Renaming Files in Git (and Updating Content)

When you need to rename a blog post file (or any other file tracked by Git) and also update its content (like the `title` in the frontmatter), it's important to tell Git about the rename explicitly to preserve file history and avoid issues.

**Ideal Process:**

1.  **Modify Content First (Optional but Recommended):**
    *   Open the file you intend to rename (e.g., `_posts/YYYY-MM-DD-old-title.md`).
    *   Make any necessary content changes (e.g., update the `title:` in the frontmatter).
    *   Save the file.
    *   At this point, `git status` will show the file as `modified`.

2.  **Rename the File Using `git mv`:**
    *   This command stages the file for renaming and includes any modifications made in step 1.
    *   In your terminal, from the project root directory, run:
        ```bash
        git mv _posts/YYYY-MM-DD-old-title.md _posts/YYYY-MM-DD-new-title.md
        ```
    *   `git status` should now show the file as `renamed: _posts/YYYY-MM-DD-old-title.md -> _posts/YYYY-MM-DD-new-title.md`.

3.  **Commit the Changes:**
    *   Bundle the rename and content updates into a single commit.
        ```bash
        git commit -m "Rename old-title.md to new-title.md and update content"
        ```

4.  **Push to Remote:**
    *   Publish your changes to the live site.
        ```bash
        git push origin main
        ```

**Troubleshooting: Old File Reappears as "Untracked"**

Sometimes, you might find the *old* filename reappearing as "untracked" in `git status` after you thought you'd correctly renamed and committed. The *new* filename might also show as "modified" even if you thought all changes were committed.

1.  **Verify `git status`:** Confirm the old file is listed under "Untracked files" and the new file under "Changes not staged for commit" (if it has further modifications) or that your working tree is clean if the new file is exactly as committed.
2.  **Delete the Untracked Old File:** Since Git is no longer tracking it (and your remote should have the rename), you can safely delete it from your local system.
    *   Using PowerShell (default on Windows for this project):
        ```powershell
        Remove-Item _posts/YYYY-MM-DD-old-title.md
        ```
    *   Or using Git Bash / Linux / macOS:
        ```bash
        rm _posts/YYYY-MM-DD-old-title.md
        ```
3.  **Stage Any Modifications to the New File:** If `git status` shows the *new* filename as `modified`:
    ```bash
    git add _posts/YYYY-MM-DD-new-title.md
    ```
4.  **Commit and Push Again:**
    ```bash
    git commit -m "Finalize updates for new-title.md and ensure old file is removed"
    git push origin main
    ```
This ensures your local and remote repositories are consistent.

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

## Troubleshooting Common Rendering Issues

If you encounter display problems in your posts, especially with content inside expandable `<details>` sections or with Markdown elements not appearing as expected, these troubleshooting steps may help. These often relate to how Jekyll's Markdown processor (Kramdown) interacts with embedded HTML and Markdown syntax.

### 1. Incorrect Backgrounds or Text Styles in `<details>` Sections

*   **Symptom:**
    *   The content area within an expanded `<details>` block has an unexpected white or light background instead of the theme's dark background.
    *   Text color is wrong (e.g., dark text on a dark background).
*   **Diagnosis (Using Browser Developer Tools - F12):**
    1.  On the live page, expand the `<details>` section.
    2.  Right-click the problematic content and select "Inspect" or "Inspect Element".
    3.  Check if your content (e.g., paragraphs, lists) is incorrectly wrapped inside HTML elements like `<div class="highlight">`, `<pre class="highlight">`, and `<code>`. This indicates the syntax highlighter (Rouge) treated your normal text as a code block.
*   **Likely Cause & Solution:**
    *   **Leading Whitespace:** The most common cause for the "treated as code block" issue is leading whitespace (spaces or tabs) on the *very first line of content* inside a `<div markdown="1">` tag.
    *   **Fix:** Edit the post's Markdown file. Locate the `<div markdown="1">` (usually within your `<details>` block). Ensure the first line of your actual content immediately following this opening `div` tag has **NO leading spaces or tabs**.
        ```html
        <!-- Example within <details> -->
        <details style="background-color: #282c34; ...">
          <summary style="color: #7cc5ff; ...">Read Full Post Details...</summary>
          <div style="color: #bbb;" markdown="1">
        <!-- INCORRECT: Leading spaces here will cause issues -->
        <!--    This text starts with spaces and will be treated as code. -->

        <!-- CORRECT: No leading spaces -->
        This text starts correctly and will be treated as normal Markdown.
        ...
          </div>
        </details>
        ```
    *   **Verify Styles:** Double-check that your `<details>` tag itself has the intended `background-color` (e.g., `#282c34`) and the primary content `div markdown="1">` within it has the correct `color` for text (e.g., `#bbb`). Ensure your `<summary>` tag is also styled correctly (e.g., `style="cursor: pointer; font-weight: bold; color: #7cc5ff; font-size: 1.2em;"`).

### 2. Markdown Headings (`### My Heading`) Not Rendering

*   **Symptom:** You see the literal characters `### My Heading` on the page instead of a styled heading.
*   **Causes & Solutions:**
    1.  **Leading Whitespace:** Remove any spaces or tabs *before* the `###` characters.
    2.  **Missing Blank Line:** Ensure there is at least one completely empty line *before* the heading line.
        ```markdown
        <!-- Correct Heading Formatting -->
        Some preceding paragraph.

        ### This is a Correctly Formatted Heading
        Text following the heading.

        <!-- Incorrect: Leading spaces before ### -->
           ### This heading has leading spaces.

        <!-- Incorrect: No blank line before ### -->
        Some preceding paragraph.
        ### This heading is missing a blank line above it.
        ```

### 3. Stray HTML Tags (e.g., `</div>`, `</details>`) Visible as Text

*   **Symptom:** Closing HTML tags appear as plain text at the end of an expandable `<details>` section.
*   **Likely Cause:** This can happen if a `<div markdown="1">` block ends with certain Markdown elements (like a list) without a subsequent standard block-level HTML element for the parser to "land" on.
*   **Solution:** Add a "buffer" paragraph, like `<p>&nbsp;</p>` (a non-breaking space), just before the final closing `</div>` of the main content `div markdown="1">`.
    ```html
    <!-- Inside your <details> block -->
    <div markdown="1">
      ...
      - Last item in a list
      - Another list item

    <p>&nbsp;</p>  <!-- Add this line -->
    </div> <!-- This is the closing div for markdown="1" -->
    </details>
    ```

### 4. Markdown Images (`![alt text](URL)`) Appearing as Plain Text

*   **Symptom:** Instead of an image, you see the Markdown image syntax like `![My Image](image.jpg)` as text.
*   **Causes & Solutions:**
    1.  **Missing `markdown="1"` on Wrapper:** If the image Markdown is inside an HTML `<div>` (e.g., for centering), that specific `div` *also* needs the `markdown="1"` attribute, even if a parent `div` already has it.
    2.  **Missing Blank Lines:** Ensure there are empty blank lines *before and after* the Markdown image line itself, and also *before and after* its wrapping `div` if one is used.
        ```markdown
        <!-- Correct Image Rendering -->
        <div markdown="1"> <!-- Main content div with markdown="1" -->
          Some text before the image.

          <div style="text-align: center;" markdown="1"> <!-- Image's own wrapper div also needs markdown="1" -->

          ![Alt text for my image](/media/image.jpg)

          </div>

          Some text after the image.
          <p>&nbsp;</p> <!-- Good practice for the end of the main markdown="1" block -->
        </div>
        ```

## License

All rights reserved. The content of this website is not licensed for public use.

<!-- Trivial change to trigger GitHub Pages rebuild -->

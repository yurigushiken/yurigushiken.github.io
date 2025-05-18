---
layout: post
title: "Automating Google Shared Drive Backups"
date: 2024-11-24 12:00:00 -0400
categories: Automation Tools lcn-lab
thumbnail: https://raw.githubusercontent.com/yurigushiken/google-shared-drive-exporter/refs/heads/main/images/YouCut_20241115_174925804_1.gif
subtitle: "Lab Tool: Automated backup for LCN Lab Shared Drive."
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">Automated backup procedure for LCN Lab Shared Drive.</p>
  
  <h3 style="color: #eee;">What it does:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Handles limitations set by Google with Shared Drives.</li>
    <li>Sanitizes file and directory names to ensure compatibility.</li>
    <li>Converts Google Workspace file formats (e.g., Docs, Sheets, Slides) to Microsoft Office equivalents.</li>
    <li>Generates detailed reports for each backup operation.</li>
  </ul>
</div>

<details style="margin-bottom: 20px; background-color: #282c34; padding: 15px; border-radius: 5px; border: 1px solid #444;">
  <summary style="cursor: pointer; font-weight: bold; color: #7cc5ff; font-size: 1.2em;">Read Full Project Details...</summary>
  <div style="padding-top: 15px; color: #bbb;" markdown="1">

![Google Drive Backup Script in Action](https://raw.githubusercontent.com/yurigushiken/google-shared-drive-exporter/refs/heads/main/images/YouCut_20241115_174925804_1.gif)

While working at the [Language and Cognitive Lab](https://www.tc.columbia.edu/lcl/) at Teachers College, I discovered a significant gap in Google Workspace: there's no native way to backup Shared Drives. No export option, no Takeout support. Manual downloads fail with large files, special characters in names, and Windows path length limits.

I developed a [Python script](https://github.com/yurigushiken/google-shared-drive-exporter) to address these limitations. The tool:
- Sanitizes file names and paths
- Performs incremental backups
- Converts Google Workspace formats to Office
- Generates detailed backup reports

The lab now uses this solution to reliably backup years of research data. If your organization struggles with similar Shared Drive backup challenges, you can find the complete solution on [GitHub](https://github.com/yurigushiken/google-shared-drive-exporter). For more information about our lab's research, visit the [Language and Cognitive Lab website](https://www.tc.columbia.edu/lcl/).

[Language and Cognitive Lab]: https://www.tc.columbia.edu/lcl/
[GitHub Repository]: https://github.com/yurigushiken/google-shared-drive-exporter
  </div>
</details>
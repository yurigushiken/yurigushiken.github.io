---
layout: post
title: "Automating Google Shared Drive Backups"
date: 2024-11-24 16:00:00 -0400
categories: Automation Tools
---

![Google Drive Backup Script in Action](/media/backup-script-demo.png)

![Running the backup script](https://raw.githubusercontent.com/yurigushiken/google-shared-drive-exporter/refs/heads/main/images/YouCut_20241115_174925804_1.gif)


While working at the [Language and Cognitive Lab](https://www.tc.columbia.edu/lcl/) at Teachers College, I discovered a significant gap in Google Workspace: there's no native way to backup Shared Drives. No export option, no Takeout support. Manual downloads fail with large files, special characters in names, and Windows path length limits.

I developed a [Python script](https://github.com/yurigushiken/google-shared-drive-exporter) to address these limitations. The tool:
- Sanitizes file names and paths
- Performs incremental backups
- Converts Google Workspace formats to Office
- Generates detailed backup reports

The lab now uses this solution to reliably backup years of research data. If your organization struggles with similar Shared Drive backup challenges, you can find the complete solution on [GitHub](https://github.com/yurigushiken/google-shared-drive-exporter). For more information about our lab's research, visit the [Language and Cognitive Lab website](https://www.tc.columbia.edu/lcl/).

[Language and Cognitive Lab]: https://www.tc.columbia.edu/lcl/
[GitHub Repository]: https://github.com/yurigushiken/google-shared-drive-exporter
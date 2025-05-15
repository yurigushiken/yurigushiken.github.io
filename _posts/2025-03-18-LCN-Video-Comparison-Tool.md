---
layout: post
title: "LCN Video Comparison: Multi-Video Synchronization Tool"
date: 2025-03-18 10:00:00 -0400
categories: tools development lcn-lab
thumbnail: /media/eir-data-visualization.png
---

*13 April update: This project is now replaced by [Analysis Tool](https://yurigushiken.github.io/tools/development/research/visualization/2025/04/13/Infant-Event-Representations-Heatmap-Viewer.html)*

My lab partner, Yuexin Li, and I created  (1)  heatmaps that represent all participant gazepoints (2) a specialized data visualization website for the Language and Cognition Lab at Columbia University. The [LCN Video Comparison Tool](https://yurigushiken.github.io/LCN-video-viewer/) helps us compare multiple experimental videos simultaneously with frame-by-frame precision.

<iframe width="100%" height="400" src="https://www.youtube.com/embed/LjDz26i2shU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
*(1) Heatmap video, 11-month old participants, GW event*

![LCN Video Comparison Tool Screenshot](/media/eir-data-visualization.png)
*(2) Data representation tool: [link](https://yurigushiken.github.io/LCN-video-viewer/)*

The tool solves a common research problem: comparing participants' responses side by side. Frame-precise synchronization reveals subtle behavioral patterns that would otherwise remain hidden in sequential viewing.

Capabilities:
- Customizable grid layouts (1×1, 1×2, 2×2, 2×3)
- Synchronized playback of multiple videos
- Frame-by-frame navigation (1/30th of a second precision)
- Leader video designation that others follow
- Precise frame jumping/scrubbing across all videos


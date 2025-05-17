---
layout: post
title: "LCN Video Comparison: Multi-Video Synchronization Tool"
date: 2025-03-18 10:00:00 -0400
categories: tools development lcn-lab
thumbnail: /media/eir-data-visualization.png
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">A custom-built web tool for synchronized frame-by-frame comparison of eye-tracking data.</p>
  
  <h3 style="color: #eee;">What we did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Develop a tool for data analysis</li>
    <li>Enable frame-by-frame navigation (1/30th second).</li>
    <li>Version 1 (for Version 2, please see: <a href="https://yurigushiken.github.io/tools/development/research/visualization/lcn-lab/2025/04/13/Infant-Event-Representations-Heatmap-Viewer.html" style="color: #7cc5ff;">Infant Event Representations Heatmap Viewer</a>)</li>
  </ul>
</div>

![LCN Video Comparison Tool Screenshot](/media/eir-data-visualization.png)
*(1) Data representation tool: [link](https://yurigushiken.github.io/LCN-video-viewer/)*

<details style="margin-bottom: 20px; background-color: #282c34; padding: 15px; border-radius: 5px; border: 1px solid #444;">
  <summary style="cursor: pointer; font-weight: bold; color: #7cc5ff; font-size: 1.2em;">Read Full Project Details...</summary>
  <div style="padding-top: 15px; color: #bbb;" markdown="1">
*13 April update: This project is now replaced by [Analysis Tool](https://yurigushiken.github.io/tools/development/research/visualization/2025/04/13/Infant-Event-Representations-Heatmap-Viewer.html)*

My lab partner, Yuexin Li, and I created  (1)  heatmaps that represent all participant gazepoints (2) a specialized data visualization website for the Language and Cognition Lab at Columbia University. The [LCN Video Comparison Tool](https://yurigushiken.github.io/LCN-video-viewer/) helps us compare multiple experimental videos simultaneously with frame-by-frame precision.

The tool solves a common research problem: comparing participants' responses side by side. Frame-precise synchronization reveals subtle behavioral patterns that would otherwise remain hidden in sequential viewing.

Capabilities:
- Customizable grid layouts (1×1, 1×2, 2×2, 2×3)
- Synchronized playback of multiple videos
- Frame-by-frame navigation (1/30th of a second precision)
- Leader video designation that others follow
- Precise frame jumping/scrubbing across all videos

<iframe width="100%" height="400" src="https://www.youtube.com/embed/LjDz26i2shU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
*(2) Heatmap video, 11-month old participants, GW event*
</div>
</details>


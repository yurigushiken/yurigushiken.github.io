---
layout: post
title: "EEG Imaging Analysis: Visualizing Neural Responses"
date: 2025-07-14 11:00:00 -0400
categories: research data-analysis lcn-lab
thumbnail: /media/eeg-imaging01.png
subtitle: "A website displaying EEG analysis of numerical processing, featuring topographic maps and LORETA source localization."
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">A website to showcase our analysis for the EEG Numbers Study.</p>
  
  <h3 style="color: #eee;">What we did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Processed and analyzed EEG and behavioral data from 24 participants in a numerical change detection task.</li>
    <li>Developed a data processing pipeline in Python using MNE, Pandas, and NumPy.</li>
    <li>Generated visualizations: butterfly plots, topographic maps of brain activity, LORETA source estimations.</li>
    <li>Established a data processing workflow and output convention for reproducibility.</li>
    <li>Built an internal GitHub Pages website to display our findings.</li>
    <li><a href="https://github.com/yurigushiken/eeg-image-analysis-v2" style="color: #7cc5ff;">View project on GitHub</a></li>
  </ul>
</div>

<!-- Screenshot -->
<div style="margin-bottom: 20px; text-align: center;">
  <img src="/media/eeg_image_analysis_website.png" alt="Internal GitHub Pages website" style="max-width: 100%; height: auto; border: 1px solid #444; border-radius: 6px;">
  <p style="margin-top: 10px; font-size: 0.95em; color: #bbb;">Internal GitHub Pages website</p>
</div>

<details style="margin-bottom: 20px; background-color: #282c34; padding: 15px; border-radius: 5px; border: 1px solid #444;">
  <summary style="cursor: pointer; font-weight: bold; color: #7cc5ff; font-size: 1.2em;">Read Full Project Details...</summary>
  <div style="padding-top: 15px; color: #bbb;" markdown="1">

### The Neurobehavioral Basis of Numerical Processing

This project contains the data and analysis scripts for a study investigating the neurobehavioral basis of the Parallel Individuation (PI) and Approximate Number System (ANS). It analyzes EEG and behavioral data from 24 participants performing a numerical change detection task. The core scientific background is based on a foundational dissertation which details the theories, experimental design, and original findings (see the study by Jean Tang, <a href="https://www.proquest.com/docview/2812356028?parentSessionId=zW1BLJcwkBjWeCCtTIBQHAODqVYHyBZdWH7abINSoNM%3D&accountid=14258&sourcetype=Dissertations%20&%20Theses" style="color: #7cc5ff;">The Neurobehavioral Basis of the Parallel Individuation (PI) and Approximation Number System (ANS)</a>).

### Datasets Overview
The raw data is processed into four primary datasets, each residing in its own directory, to facilitate different types of analysis:
*   `eeg_all/`: Includes EEG data from all trials for all 24 subjects, regardless of whether their behavioral response was correct or incorrect. Useful for analyzing error-related brain activity.
*   `eeg_acc=1/`: A filtered subset containing data only from trials where the participant responded correctly. This is the primary dataset for most analyses.
*   `eeg_ds_all/`: Includes all trials. "DS" stands for "direction and size".
*   `eeg_ds_acc=1/`: Includes only correct trials. "DS" stands for "direction and size".

### Data Processing Pipeline
The analysis is designed as a series of scripts where the output of one serves as the input for the next.

**Stage 1: Initial Processing**
A foundational Python script takes raw EEG and behavioral data, cleans it, and transforms it into a structured format for MNE-Python. It uses a master file from the HAPPE pipeline to select artifact-free trials and maps electrode locations from a standard 128-channel cap file. This stage outputs segmented EEG data (`*-epo.fif`) and precisely aligned behavioral metadata (`*_metadata.h5`).

**Stage 2: Visualization and Analysis**
Subsequent scripts load the processed epoch files to perform detailed analysis:
*   Generate butterfly plots to view ERP components across all channels.
*   Create topographic maps of brain activity at specific time points (e.g., for N1 and P1 components).
*   Perform LORETA source localization to estimate the origin of the neural signals, using the `fsaverage` model from MNE-Python for anatomical reference.

All generated plots are saved to a structured directory system, separating individual subject results from group-level averages for clarity and reproducibility.

  </div>
</details> 

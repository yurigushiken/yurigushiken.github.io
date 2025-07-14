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
  <p style="font-size: 1.1em; color: #ccc;">A website to showcase results and visualizations from our EEG Numbers study, specifically the Parallel Individuation (PI) and Approximate Number System (ANS).</p>
  
  <h3 style="color: #eee;">What we did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Processed and analyzed EEG and behavioral data from 24 participants in a numerical change detection task.</li>
    <li>Developed a data processing pipeline in Python using MNE, Pandas, and NumPy.</li>
    <li>Generated neuroscientific visualizations: butterfly plots, topographic maps of brain activity, LORETA source estimations.</li>
    <li>Established a structured data processing workflow and output convention for reproducibility.</li>
    <li>Built a <a href="https://yurigushiken.github.io/eeg-image-analysis/" style="color: #7cc5ff;">GitHub Pages website</a> to display our findings.</li>
  </ul>
</div>

<!-- Top (Main) Swiper -->
<div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #333; margin-bottom: 10px; background-color: #383838;" class="swiper eegSwiper2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg-imaging01.png" alt="EEG Topographic Map" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">EEG Topographic Map</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_imaging02-group_n1_plot_landing_on_large_increasing_acc=1.png" alt="N1 Component - Landing on Large (Increasing)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">N1 Component - Landing on Large (Increasing)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_imaging03-group_p1_plot_landing_on_large_increasing_acc=1.png" alt="P1 Component - Landing on Large (Increasing)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">P1 Component - Landing on Large (Increasing)</p>
      </div>
    </div>
     <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_imaging04-group_n1_plot_landing_on_small_decreasing_acc=1.png" alt="N1 Component - Landing on Small (Decreasing)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">N1 Component - Landing on Small (Decreasing)</p>
      </div>
    </div>
     <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_imaging05-group_p1_plot_landing_on_small_decreasing_acc=1.png" alt="P1 Component - Landing on Small (Decreasing)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">P1 Component - Landing on Small (Decreasing)</p>
      </div>
    </div>
  </div>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>

<!-- Bottom (Thumbs) Swiper -->
<div thumbsSlider="" class="swiper eegSwiper" style="height: 100px; box-sizing: border-box; padding: 10px 0;">
  <div class="swiper-wrapper">
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg-imaging01.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_imaging02-group_n1_plot_landing_on_large_increasing_acc=1.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_imaging03-group_p1_plot_landing_on_large_increasing_acc=1.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_imaging04-group_n1_plot_landing_on_small_decreasing_acc=1.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_imaging05-group_p1_plot_landing_on_small_decreasing_acc=1.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
  </div>
</div>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    var swiperThumbs = new Swiper(".eegSwiper", {
      spaceBetween: 10,
      slidesPerView: 4,
      freeMode: true,
      watchSlidesProgress: true,
      clickable: true,
      centeredSlides: true,
    });
    var swiperMain = new Swiper(".eegSwiper2", {
      spaceBetween: 10,
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      thumbs: {
        swiper: swiperThumbs,
      },
      loop: true,
      keyboard: {
        enabled: true,
      },
    });
  });
</script>

<style>
  .swiper-slide-thumb-active {
    opacity: 1 !important;
  }
</style>

<details style="margin-bottom: 20px; background-color: #282c34; padding: 15px; border-radius: 5px; border: 1px solid #444;">
  <summary style="cursor: pointer; font-weight: bold; color: #7cc5ff; font-size: 1.2em;">Read Full Project Details...</summary>
  <div style="padding-top: 15px; color: #bbb;" markdown="1">

### The Neurobehavioral Basis of Numerical Processing

This project contains the data and analysis scripts for a study investigating the neurobehavioral basis of the Parallel Individuation (PI) and Approximate Number System (ANS). It analyzes EEG and behavioral data from 24 participants performing a numerical change detection task. The core scientific background is based on a foundational dissertation which details the theories, experimental design, and original findings.

### Datasets Overview
The raw data is processed into four primary datasets, each residing in its own directory, to facilitate different types of analysis:
*   `eeg_all/`: Includes EEG data from all trials for all 24 subjects, regardless of whether their behavioral response was correct or incorrect. Useful for analyzing error-related brain activity.
*   `eeg_acc=1/`: A filtered subset containing data only from trials where the participant responded correctly. This is the primary dataset for most analyses.
*   `eeg_ds_all/`: A downsampled version of the `eeg_all` dataset, which reduces file size and significantly speeds up computational processing for exploratory analysis.
*   `eeg_ds_acc=1/`: A downsampled version containing only correct trials, combining computational efficiency with data accuracy.

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
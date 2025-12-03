---
layout: post
title: "Decoding EEG Data with Machine Learning"
date: 2025-07-20 11:00:00 -0400
categories: research machine-learning eeg neuroscience deep-learning lcn-lab
thumbnail: /media/step1_landing_on_2_3_space_light_aug_step1B_0_496-20251010_094949_landing_on_2_3_eeg_step1_t026-overall confusion.png
subtitle: "Using a unified deep learning framework to classify cognitive variables from EEG data."
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">A decoder of EEG brain signals using machine learning.</p>
  
  <h3 style="color: #eee;">What we did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Built a configurable training pipeline supporting multiple neural network architectures (CNN, Hybrid CNN-Transformer, Dual-Stream, EEGNet variants, and T-TIME)</li>
    <li>Created automated hyperparameter optimization using Optuna with search spaces</li>
    <li>Decoded brain data, results suggest distinct neural signals for different experimental conditions </li>
    <li><a href="https://github.com/yurigushiken/numbers_eeg_nn_project" style="color: #7cc5ff;">View project on GitHub</a></li>
  </ul>
</div>

<!-- Top (Main) Swiper -->
<div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #333; margin-bottom: 10px; background-color: #383838;" class="swiper eegNNSwiper2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/step1_landing_on_2_3_space_light_aug_step1B_0_496-20251010_094949_landing_on_2_3_eeg_step1_t026-overall confusion.png" alt="Landing on 2 vs. 3 Confusion Matrix" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Two-class confusion matrix for the landing 2 vs. landing 3 task. Ensemble accuracy reached 55.6% with balanced F1 scores for both classes.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/step1_landing_on_2_3_space_light_aug_step1B_0_496-importances-step1_landing_on_2_3_space_light_aug_step1B_0_496.png" alt="Hyperparameter Importances" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Optuna hyperparameter importances. Time masking probability dominated the search, followed by early stopping and time-mask fraction.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/step1_landing_on_2_3_space_light_aug_step1B_0_496-history-step1_landing_on_2_3_space_light_aug_step1B_0_496.png" alt="Optuna Optimization History" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Optimization history for the landing 2 vs. 3 search. The best trial plateaued at an objective value of ~98 after ~10 evaluations.</p>
      </div>
    </div>
  </div>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>

<!-- Bottom (Thumbs) Swiper -->
<div thumbsSlider="" class="swiper eegNNSwiper" style="height: 100px; box-sizing: border-box; padding: 10px 0;">
  <div class="swiper-wrapper">
    <div class="swiper-slide" style="width: 33%; height: 100%; opacity: 0.4;">
      <img src="/media/step1_landing_on_2_3_space_light_aug_step1B_0_496-20251010_094949_landing_on_2_3_eeg_step1_t026-overall confusion.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 33%; height: 100%; opacity: 0.4;">
      <img src="/media/step1_landing_on_2_3_space_light_aug_step1B_0_496-importances-step1_landing_on_2_3_space_light_aug_step1B_0_496.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 33%; height: 100%; opacity: 0.4;">
      <img src="/media/step1_landing_on_2_3_space_light_aug_step1B_0_496-history-step1_landing_on_2_3_space_light_aug_step1B_0_496.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
  </div>
</div>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    var swiperThumbs = new Swiper(".eegNNSwiper", {
      spaceBetween: 10,
      slidesPerView: 3,
      freeMode: true,
      watchSlidesProgress: true,
      clickable: true,
      centeredSlides: false,
    });
    var swiperMain = new Swiper(".eegNNSwiper2", {
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

### Scientific Motivation

Numerical cognition research proposes two core systems: **Parallel Individuation (PI)** for precise tracking of 1–3 items and the **Approximate Number System (ANS)** for ratio-based estimation of larger sets. We explore whether single-trial EEG can reveal that transition boundary and identify which numerosities have distinct neural signatures.

### Dataset & Study Background

We re-analyze a 128-channel EEG dataset (N=24, 6,480 trials) collected at Teachers College, Columbia University. Participants performed an oddball task (1–6 dots) detecting numerical changes. Earlier ERP work (Tang-Lonardo, 2023) showed N1 amplitudes scale with small numbers while later components mirrored reaction times. We test whether those effects are decodable.

### Pipeline Overview

- Leak-free Leave-One-Subject-Out evaluation with staged Optuna searches and composite objectives.  
- Multiple decoding targets: cardinality ranges (PI vs ANS), specific landing digits, and change/no-change contrasts.  
- Standardized artifacts: confusion matrices, hyperparameter histories, and channel/time attributions to interpret model decisions.

### Findings

- **PI range (1–3)**: A three-way classifier reaches ~40% accuracy (chance 33%), with “1” consistently the easiest digit to decode.  
- **Binary contrasts (e.g., landing on 2 vs 3)**: Achieve ~55–56% accuracy, demonstrating separable neural patterns even for adjacent small numerosities.  
- Hyperparameter importance studies highlight temporal masking as critical for generalization across subjects.

### Why It Matters

Above-chance decoding indicates that EEG contains information about both numerical ranges and individual landing digits. Mapping when performance breaks down helps us infer how the brain transitions from object tracking (PI) to approximate magnitude encoding (ANS)—knowledge that informs theories of early mathematical learning.

### Next Steps

- Extend tasks to ratio judgments, parity, and combined cardinality + landing digit decoding.  
- Continue explainability studies to link successful classifications with specific cortical regions.  
- Publish polished figures and run logs in the GitHub repo.

  </div>
</details>

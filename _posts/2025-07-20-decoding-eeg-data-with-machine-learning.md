---
layout: post
title: "Decoding EEG Data with Machine Learning"
date: 2025-07-20 11:00:00 -0400
categories: research machine-learning eeg neuroscience deep-learning lcn-lab
thumbnail: /media/eeg_nn-20250730_221656_landing_digit_cnn_all_trials_dataset_t001-overall.png
subtitle: "Using a unified deep learning framework to classify cognitive variables from EEG data."
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">A decoder of EEG brain signals using machine learning.</p>
  
  <h3 style="color: #eee;">What we did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Built a configurable training pipeline supporting multiple neural network architectures (CNN, Hybrid CNN-Transformer, Dual-Stream, EEGNet variants, and T-TIME)</li>
    <li>Created automated hyperparameter optimization using Optuna with comprehensive search spaces</li>
    <li>Identified that the CNN only was the best performer</li>
    <li><a href="https://github.com/yurigushiken/numbers_eeg_nn_project" style="color: #7cc5ff;">View project on GitHub</a></li>
  </ul>
</div>

<!-- Top (Main) Swiper -->
<div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #333; margin-bottom: 10px; background-color: #383838;" class="swiper eegNNSwiper2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250730_221656_landing_digit_cnn_all_trials_dataset_t001-overall.png" alt="Landing Digit Task CNN Confusion Matrix" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Confusion matrix for "landing_digit" task using CNN model with all trials data. Shows unique neural signals for different conditions - the model can predict the number of dots in the stimulus for some conditions, demonstrating that distinct brain patterns exist for different numerical cognition processes.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250725_025954_dec1_5class_cnn_t074.png" alt="Decreasing Minus 1 Task CNN Confusion Matrix" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Confusion matrix for "decreasing minus 1" task - where participants saw a prime number then a stimulus one number lower. The model could distinguish between conditions 65, 54, 43, 32, 21, demonstrating that EEG signals contain decodable information about numerical change detection processes.</p>
      </div>
    </div>
  </div>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>

<!-- Bottom (Thumbs) Swiper -->
<div thumbsSlider="" class="swiper eegNNSwiper" style="height: 100px; box-sizing: border-box; padding: 10px 0;">
  <div class="swiper-wrapper">
    <div class="swiper-slide" style="width: 50%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250730_221656_landing_digit_cnn_all_trials_dataset_t001-overall.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 50%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250725_025954_dec1_5class_cnn_t074.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
  </div>
</div>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    var swiperThumbs = new Swiper(".eegNNSwiper", {
      spaceBetween: 10,
      slidesPerView: 2,
      freeMode: true,
      watchSlidesProgress: true,
      clickable: true,
      centeredSlides: true,
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

### The Challenge of Decoding Numerical Cognition

Understanding how the brain processes numbers is a fundamental question in cognitive neuroscience. This project tackles the challenge of decoding different numerical cognition states directly from EEG brain signals using modern machine learning approaches.

### Our Approach

We built a machine learning system that can analyze EEG data and classify what type of numerical processing a person is doing. We experimented with multiple neural network architectures:

**Raw EEG Processing:**
- **CNN (Convolutional Neural Networks)**: Direct processing of time-series EEG data
- **EEGNet variants**: Specialized architectures designed for EEG, including models with squeeze-and-excitation blocks
- **Hybrid CNN-Transformer**: Combines convolutional processing with attention mechanisms
- **Dual-Stream**: Processes both raw time-series and frequency-domain representations

**Advanced Adaptation:**
- **T-TIME (Test-Time Adaptation)**: Allows models to adapt to individual subjects in real-time

### Experimental Tasks

We tested our system on subjects' data on two main cognitive tasks:

1. **Landing Digit Task**: Participants viewed dot arrays and had to process the quantity information
2. **Decreasing Minus 1 Task**: Participants saw a prime number followed by a stimulus one number lower

### Key Findings

The confusion matrices show that our models can distinguish between different numerical conditions above chance level, indicating that unique neural signatures exist for different types of numerical processing.

### Technical Innovation

We have a unified training pipeline with:
- Leave-One-Subject-Out cross-validation for robust evaluation
- Automated hyperparameter optimization using Optuna
- Standardized reporting and visualization across all model types
- GPU acceleration (CUDA)

Our work demonstrates that EEG signals contain decodable information about numerical cognition processes.

### Future Directions

The framework extensible, as we can add new tasks, models, and analysis methods.

  </div>
</details>
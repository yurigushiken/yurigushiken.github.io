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
          <img src="/media/eeg_nn-20250730_221656_landing_digit_cnn_all_trials_dataset_t001-overall.png" alt="Landing Digit Task CNN Confusion Matrix" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Results for the 'landing_digit' task (6-class). The model correctly predicted a plurality of trials for landing digits 1, 3, 4, 5, and 6, well above the 16.67% chance level. This suggests that distinct brain patterns for these conditions are present in the EEG data.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250725_025954_dec1_5class_cnn_t074.png" alt="Decreasing Minus 1 Task CNN Confusion Matrix" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Performance on the 'decreasing minus 1' task. The model successfully distinguished between conditions 21, 54, and 65 with correct plurality predictions. Chance is 16.67%.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn 20250801_1351_landing_digit_dual_stream_unknown overall_confusion - Copy.png" alt="Dual Stream Confusion Matrix 1" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Full Leave-one-subject-out (LOSO) results for the 'landing_digit' task using the dual_stream model. This run achieved an overall accuracy of 27.2%, well above the 16.67% chance level.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn 20250801_1544_landing_digit_dual_stream_unknown overall_confusion - Copy.png" alt="Dual Stream Confusion Matrix 2" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Full LOSO results for another run of the 'landing_digit' task with the dual_stream model. This run achieved 26.1% accuracy (chance is 16.67%) and correctly predicted a plurality for landing digits 1, 3, and 5.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250719_1445_02_train_decoder_direction_binary fold3_confusion_02_train_decoder_direction_binary - Copy.png" alt="Binary Direction Task" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">CNN performance on a binary task discriminating between increasing vs. decreasing number pairs. The model correctly identified decreasing pairs 74.6% of the time and increasing pairs 60.4% of the time. Chance is 50%.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250719_0332_02_train_decoder_dec1_5class overall_confusion_02_train_decoder_dec1_5class - Copy.png" alt="5-Class Decreasing Task" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">CNN confusion matrix for the 'decreasing by 1' task (5 classes). With a 20% chance rate, the model achieved a plurality of correct predictions for trials landing on 1 (31.4%), 3 (24.3%), 4 (22.4%), and a high accuracy for landing on 5 (60.4%).</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250719_0500_02_train_decoder_land1_binaryoverall_confusion_02_train_decoder_land1_binary - Copy.png" alt="Binary Landing on 1 Task" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Binary classification for the 'landing on 1' task. The model correctly identified when the stimulus was *not* 1 (73.0% accuracy) and when it *was* 1 (64.4% accuracy). Chance is 50%.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250719_0556_02_train_decoder_inc1_5class-overall_confusion_02_train_decoder_inc1_5class - Copy.png" alt="5-Class Increasing Task" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">CNN performance on the 'increasing by 1' task (5 classes). The model correctly identified 'land 3' (32.1%), 'land 4' (25.7%), 'land 5' (43.6%), and 'land 6' (32.3%) above the 20% chance level.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250719_0357_02_train_decoder_dec1_5class-overall_confusion_02_train_decoder_dec1_5class - Copy.png" alt="5-Class Decreasing Task (Run 2)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">A separate run of the 'decreasing by 1' (5-class) task. The model achieved a plurality of correct classifications for trials landing on 1 (27.7%), 3 (22.2%), 4 (31.2%), and 5 (33.3%). Chance is 20%.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250719_0357_02_train_decoder_numbers_pairs-overall_confusion_02_train_decoder_numbers_pairs - Copy.png" alt="Full Number Pairs Task" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Decoding performance on the full 'number pairs' task (24 conditions). With chance level of ~4.1%, model achieved mean accuracy of 6.4%. Linearity along diagonal suggests model is capturing relationship between number pairs from EEG data.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250801_1351_landing_digit_dual_stream_trial-42-fold21_curves - Copy.png" alt="Landing Digit Training Curves" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Task: landing_digit. Training and validation curves for fold 21 of a dual_stream trial. Chance is 16.67</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/eeg_nn-20250801_1351_landing_digit_dual_stream_trial-42-fold21_confusion - Copy.png" alt="Landing Digit Confusion Matrix" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Task: landing_digit. Leave-one-subject-out fold 21 confusion matrix of a dual_stream trial. Chance is 16.67.</p>
      </div>
    </div>
  </div>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>

<!-- Bottom (Thumbs) Swiper -->
<div thumbsSlider="" class="swiper eegNNSwiper" style="height: 100px; box-sizing: border-box; padding: 10px 0;">
  <div class="swiper-wrapper">
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250730_221656_landing_digit_cnn_all_trials_dataset_t001-overall.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250725_025954_dec1_5class_cnn_t074.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn 20250801_1351_landing_digit_dual_stream_unknown overall_confusion - Copy.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn 20250801_1544_landing_digit_dual_stream_unknown overall_confusion - Copy.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250719_1445_02_train_decoder_direction_binary fold3_confusion_02_train_decoder_direction_binary - Copy.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250719_0332_02_train_decoder_dec1_5class overall_confusion_02_train_decoder_dec1_5class - Copy.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250719_0500_02_train_decoder_land1_binaryoverall_confusion_02_train_decoder_land1_binary - Copy.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250719_0556_02_train_decoder_inc1_5class-overall_confusion_02_train_decoder_inc1_5class - Copy.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250719_0357_02_train_decoder_dec1_5class-overall_confusion_02_train_decoder_dec1_5class - Copy.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250719_0357_02_train_decoder_numbers_pairs-overall_confusion_02_train_decoder_numbers_pairs - Copy.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250801_1351_landing_digit_dual_stream_trial-42-fold21_curves - Copy.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 10%; height: 100%; opacity: 0.4;">
      <img src="/media/eeg_nn-20250801_1351_landing_digit_dual_stream_trial-42-fold21_confusion - Copy.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
  </div>
</div>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    var swiperThumbs = new Swiper(".eegNNSwiper", {
      spaceBetween: 10,
      slidesPerView: 10,
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

### Decoding brain data

WE attempt to decode EEG brain signals using machine learning. The data is from projects at the Language and Cognitive Neuroscience Lab, Teachers College, Columbia University (Tang, 2022)

### Approach

We built a machine learning system that can analyze EEG data and classify the numerical processing a subject. We experimented with multiple neural network architectures:

**Raw EEG Processing:**
- **CNN (Convolutional Neural Networks)**: Direct processing of time-series EEG data
- **EEGNet variants**: Specialized architectures designed for EEG, including models with squeeze-and-excitation blocks
- **Hybrid CNN-Transformer**: Combines convolutional processing with attention mechanisms
- **Dual-Stream**: Processes both raw time-series and frequency-domain representations

**Advanced Adaptation:**
- **T-TIME (Test-Time Adaptation)**: Allows models to adapt to individual subjects in real-time

### Experimental "Tasks"

We tested our system on subjects' data. The following are our "tasks":

1. **Landing Digit Task**: When participants were primed with any number and the stimulus number of dots is 1, 2, 3, 4, 5, or 6
2. **Decreasing Minus 1 Task**: When participants were primed with a number followed by a stimulus one number lower
3. **Increasing or Decreasing**: When participants were primed with a number number followed by a lower or higher number

### Findings so far

The confusion matrices show that our models can distinguish between different numerical conditions above chance level, indicating that unique neural signatures exist for different types of numerical processing.

### Technical 

We have a unified training pipeline with:
- Leave-One-Subject-Out cross-validation for robust evaluation
- Automated hyperparameter optimization using Optuna
- Standardized reporting and visualization across all model types
- GPU acceleration (CUDA)

### Future 

We will make "tasks" for ratio, odd/even parity, and more. The framework extensible, as we can add new tasks, models, and analysis methods.

  </div>
</details>
---
layout: post
title: "Perception Color Experiment: Testing Hoffman's Interface Theory of Perception (ITP)"
date: 2025-04-29 11:00:00 -0400
categories: research psychology psychophysics web development data-analysis firebase react lcn-lab
thumbnail: /media/combined_experiment_and_trial_flow.png
subtitle: "An IRB-pending web-based psychophysics experiment."
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">A web-based psychophysics experiment. </p>
  
  <h3 style="color: #eee;">What we did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Examine Hoffman's Interface Theory (ITP). Do learned value associations alter color perception?</li>
    <li>Implement psychophysical methods (adaptive staircase, PSE measurement).</li>
    <li>Develop a web-based experiment using React, JavaScript, and Firebase.</li>
    <li>Design controlled visual stimuli leveraging perceptually uniform color spaces.</li>
    <li>Conduct quantitative analysis of psychometric and behavioral data.</li>
    <li>Submit application to IRB (update: Pending -May 2025).</li>
  </ul>
  
  <!-- Add links here if applicable, e.g., GitHub repo, Live Demo -->
  <!-- 
  <p style="font-size: 1.1em;">
    <a href="[Link to GitHub Repo]" style="color: #7cc5ff;">View Code on GitHub</a> | 
    <a href="[Link to Live Demo]" style="color: #7cc5ff;">Try Live Demo</a>
  </p>
  -->
</div>

<!-- Swiper ->
<!-- Top (Main) Swiper -->
<div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #333; margin-bottom: 10px; background-color: #383838;" class="swiper perceptionSwiper2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/combined_experiment_and_trial_flow.png" alt="Experiment Flow Diagram" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Experiment and Trial Flow</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/pc-combined_grid.png" alt="Stimulus Presentation Grid" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Stimulus Presentation Grid</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/pc-stimulus-red-orange.png" alt="Orange/Red Stimulus Example" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Orange/Red Stimulus Example (stimulus variations)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/pc-stimulus-blue-green.png" alt="Blue/Green Stimulus Example" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Blue/Green Stimulus Example (stimulus variations)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/pc-stimulus-olive-brown.png" alt="Olive/Brown Stimulus Example" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Olive/Brown Stimulus Example (stimulus variations)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/pc-Screenshot 2025-04-21 181710.png" alt="Perception Color Experiment Screenshot" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Chroma.JS color Pallette Helper</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/pc-w8qNtSXyF1d5tf9fRx7bRNMG6Ga2_Yuri_02_red-orange_curve_fits_plot_RedOrange.png" alt="Red/Orange Psychometric Curve Fits Plot" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;"><i>Pilot participant 01: Psychometric Curve</i></p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/pc-w8qNtSXyF1d5tf9fRx7bRNMG6Ga2_Yuri_02_red-orange_response_counts_plot_RedOrange.png" alt="Red/Orange Response Counts Plot" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;"><i>Pilot participant 01: Response Counts</i></p>
      </div>
    </div>
  </div>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>

<!-- Bottom (Thumbs) Swiper -->
<div thumbsSlider="" class="swiper perceptionSwiper" style="height: 100px; box-sizing: border-box; padding: 10px 0;">
  <div class="swiper-wrapper">
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/combined_experiment_and_trial_flow.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/pc-combined_grid.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/pc-stimulus-red-orange.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/pc-stimulus-blue-green.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/pc-stimulus-olive-brown.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/pc-Screenshot 2025-04-21 181710.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/pc-w8qNtSXyF1d5tf9fRx7bRNMG6Ga2_Yuri_02_red-orange_curve_fits_plot_RedOrange.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/pc-w8qNtSXyF1d5tf9fRx7bRNMG6Ga2_Yuri_02_red-orange_response_counts_plot_RedOrange.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
  </div>
</div>
<!-- End Swiper -->

<!-- Swiper JS Initialization Script -->
<script>
  document.addEventListener('DOMContentLoaded', function () {
    var swiperThumbs = new Swiper(".perceptionSwiper", {
      spaceBetween: 10,
      slidesPerView: 4, // Adjust number of thumbs visible
      freeMode: true,
      watchSlidesProgress: true,
      clickable: true,
      centeredSlides: true, // Center the active thumbnail
    });
    var swiperMain = new Swiper(".perceptionSwiper2", {
      spaceBetween: 10,
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      thumbs: {
        swiper: swiperThumbs,
      },
      loop: true, // Enable looping
      keyboard: { // Enable keyboard navigation
        enabled: true,
      },
    });
  });
</script>

<!-- Basic CSS for Thumb Opacity on Active -->
<style>
  .swiper-slide-thumb-active {
    opacity: 1 !important;
  }
</style>

<details style="margin-bottom: 20px; background-color: #282c34; padding: 15px; border-radius: 5px; border: 1px solid #444;">
  <summary style="cursor: pointer; font-weight: bold; color: #7cc5ff; font-size: 1.2em;">Read Full Project Details...</summary>
  <div style="padding-top: 15px; color: #bbb;" markdown="1">
_Can Value Change What We See (and Do)?_

The primary goal of this project is to test Donald Hoffman's Interface Theory (ITP); a secondary objective is developing our skills in experimental design, stimulus creation, stimulus presentation, and psychophysics research.

Hoffman's Interface Theory of Perception (ITP) proposes that our senses didn't evolve to show us objective reality, but rather a 'user interface' tuned to fitness payoffs – things relevant to survival and reproduction. This theory predicts that perception isn't fixed; for example, the perceived boundary between colors might shift depending on the 'value' we learn to associate with them. Our experiment investigates this directly, using point rewards to see if we can induce such a shift in color categorization.

A challenge in perception research is separating genuine perceptual changes from conscious strategies. We're currently iterating on our design to better isolate the perceptual effects we're interested in.

The following is a presentation of some of our work so far.

Project highlights & skills we gained:
* Applied cognitive theory (Hoffman's ITP) to design a perceptual experiment.
* Implemented psychophysical methods (adaptive staircase, PSE measurement).
* Developed a web-based experiment using React, JavaScript, and color science tools.
* Designed controlled visual stimuli (perceptually uniform color spaces).
* Conducted quantitative analysis of psychometric and behavioral data.
* Iteratively refined experimental design to isolate perceptual effects.


**Experiment flow:**
* Introduction & Setup: Brief instructions and webcam check/calibration via RealEye.io.
* Baseline Block: First, we measure each participant's initial perceptual boundary – the point where they are equally likely to categorize an ambiguous color as 'Blue' or 'Green'. This establishes their personal Point of Subjective Equivalence (PSE).
* Experimental Blocks (Randomized Order): Participants then complete two main blocks designed to test the influence of value:
  * Skewed Reward Block: Correctly identifying one anchor color (e.g., the clearest Blue) consistently yields more points (+4) than correctly identifying the other anchor (e.g., the clearest Green, +1 point). We test if this differential reward shifts the participant's perceived boundary.
  * Control Reward Block: Correctly identifying either anchor color yields the same number of points (+1). This block helps ensure any shift seen in the Skewed block is due to the learned color-value link, not just the presence of points or task repetition.
* Debriefing: Participants are informed about the study's purpose and hypotheses.

### Stimulus Demonstration

<div style="text-align: center; margin: 2rem 0;">
  <video width="80%" max-width="700px" controls>
    <source src="/media/pc-Recording%202025-05-03%20105310-20s.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

</div>
</details>

--- 
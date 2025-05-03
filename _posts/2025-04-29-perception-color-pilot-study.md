---
layout: post
title: "Perception Color Experiment: Testing Hoffman's Interface Theory of Perception (ITP)"
date: 2025-04-29 11:00:00 -0400
categories: research psychology psychophysics web development data-analysis firebase react
---
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

<!-- Glide.js Carousel -->
<div class="glide" id="perception-color-carousel">
  <div class="glide__track" data-glide-el="track">
    <ul class="glide__slides">
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/pc-combined_experiment_and_trial_flow.png" alt="Experiment Flow Diagram" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Experiment and Trial Flow</p>
        </div>
      </li>
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/pc-combined_grid.png" alt="Stimulus Presentation Grid" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Stimulus Presentation Grid</p>
        </div>
      </li>
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/pc-Screenshot 2025-05-03 110631.png" alt="Experiment Interface Additional View" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Orange/Red Stimulus Example</p>
        </div>
      </li>
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/pc-stimulus-blue-green.png" alt="Blue/Green Stimulus Example" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Blue/Green Stimulus Example</p>
        </div>
      </li>
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/pc-Screenshot 2025-04-21 181710.png" alt="Perception Color Experiment Screenshot" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Chroma.JS color Pallette Helper</p>
        </div>
      </li>
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/pc-w8qNtSXyF1d5tf9fRx7bRNMG6Ga2_Yuri_02_red-orange_response_counts_plot_RedOrange.png" alt="Red/Orange Response Counts Plot" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Response Counts</p>
        </div>
      </li>
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/pc-w8qNtSXyF1d5tf9fRx7bRNMG6Ga2_Yuri_02_red-orange_curve_fits_plot_RedOrange.png" alt="Red/Orange Psychometric Curve Fits Plot" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Psychometric Curve</p>
        </div>
      </li>
    </ul>
  </div>

  <div class="glide__arrows" data-glide-el="controls">
    <button class="glide__arrow glide__arrow--left" data-glide-dir="<">prev</button>
    <button class="glide__arrow glide__arrow--right" data-glide-dir=">">next</button>
  </div>

  <!-- Added Navigation Bullets -->
  <div class="glide__bullets" data-glide-el="controls[nav]" style="text-align: center; margin-top: 10px;">
    <!-- Glide.js will automatically populate buttons here -->
    <!-- Example structure (do not add manually): -->
    <!-- <button class="glide__bullet" data-glide-dir="=0"></button> -->
    <!-- <button class="glide__bullet" data-glide-dir="=1"></button> -->
  </div>
</div>
<!-- End Glide.js Carousel -->


Experimental flow:
Introduction & Setup: Brief instructions and webcam check/calibration via RealEye.io.
Baseline Block: First, we measure each participant's initial perceptual boundary – the point where they are equally likely to categorize an ambiguous color as 'Blue' or 'Green'. This establishes their personal Point of Subjective Equivalence (PSE).
Experimental Blocks (Randomized Order): Participants then complete two main blocks designed to test the influence of value:
Skewed Reward Block: Correctly identifying one anchor color (e.g., the clearest Blue) consistently yields more points (+4) than correctly identifying the other anchor (e.g., the clearest Green, +1 point). We test if this differential reward shifts the participant's perceived boundary.
Control Reward Block: Correctly identifying either anchor color yields the same number of points (+1). This block helps ensure any shift seen in the Skewed block is due to the learned color-value link, not just the presence of points or task repetition.
Debriefing: Participants are informed about the study's purpose and hypotheses.

### Stimulus Demonstration

<div style="text-align: center; margin: 2rem 0;">
  <video width="80%" max-width="700px" controls>
    <source src="/media/pc-Recording%202025-05-03%20105310-20s.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

--- 
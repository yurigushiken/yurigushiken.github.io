---
layout: post
title: "Perception Color Experiment: Reward Effects on Categorization"
date: 2025-05-05 11:00:00 -0400 
categories: research psychology web development data-analysis firebase react lcn-lab hobby
---
The purposes of this project are to test Donald Hoffman's Interface Theory of Perception (ITP) and gain experience and understanding of stimulus presentation and pyschophysics research.

<div style="text-align: center; margin: 1rem 0;">
  <img src="/media/pc-Screenshot 2025-05-03 110631.png" alt="Experiment Interface Additional View" style="width: 80%; max-width: 700px; height: auto; object-fit: contain; border: 1px solid #ddd;">
</div>

<div style="display: flex; justify-content: space-around; margin-bottom: 2rem; flex-wrap: wrap; align-items: flex-start;">
  <!-- Left Image Block -->
  <div style="width: 48%; min-width: 250px; max-height: 400px; border: 1px solid #ddd; display: flex; flex-direction: column; padding: 10px; box-sizing: border-box; margin-bottom: 1rem;">
    <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
      <img src="/media/pc-Screenshot 2025-04-21 181710.png" alt="Perception Color Experiment Screenshot" style="display: block; max-width: 100%; max-height: 100%; object-fit: contain;">
    </div>
    <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Experiment Interface</p>
  </div>

  <!-- Right Image Block -->
  <div style="width: 48%; min-width: 250px; max-height: 400px; border: 1px solid #ddd; display: flex; flex-direction: column; padding: 10px; box-sizing: border-box; margin-bottom: 1rem;">
    <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
      <img src="/media/pc-combined_experiment_and_trial_flow.png" alt="Experiment Flow Diagram" style="display: block; max-width: 100%; max-height: 100%; object-fit: contain;">
    </div>
    <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Experiment and Trial Flow</p>
  </div>
</div>

<p style="text-align: center; margin: 2rem 0;">
  <a href="https://perception-color.web.app/" target="_blank" style="font-size: 1.1em; font-weight: bold;">Explore the Perception Color Experiment (Demo)</a><br>
  <span style="font-size: 0.9em;">(This version is for demonstration purposes only and not the final experiment.)</span>
</p>

Can earning points change how we see colors? We explore if offering different rewards for identifying colors (like Red vs. Orange or Blue vs. Green) affects where people perceive the boundary between them. We're testing Donald Hoffman's Interface Theory of Perception (ITP), which proposes that what we perceive isn't objective reality, but an "interface" shaped by evolution to guide useful behavior potentially influenced by reward values.

**Key Features & Flow:**
*   **Tech:** Built with React, Vite, and Firebase (for login, database, and hosting).
*   **Finding Your Boundary:** First, a quick adaptive test finds your personal "tipping point" (Point of Subjective Equivalence or PSE) between colors like Red/Orange, Blue/Green, or Olive/Brown.
*   **Testing Rewards:** Next, you'll categorize colors near your boundary in two phases (order randomized):
    *   _Skewed Rewards:_ Get more points (+4) for one color, fewer (+1) for the other.
    *   _Control Rewards:_ Get equal points (+1) for either color.
*   **Piloting:** We recently tested this version with 6 participants.

We securely save all trial data (responses, timing, calculated boundaries) to Firestore. Our Python analysis scripts fetch this data and fit psychometric curves.

We quantify each participant's color boundary (PSE) and sensitivity (slope) under the different reward conditions, revealing how rewards impact their judgments. The plots below illustrate this analysis for the Red/Orange task.

<div style="display: flex; justify-content: space-around; margin-top: 2rem; flex-wrap: wrap; align-items: flex-start;">
  <!-- Bottom Image 1 -->
  <div style="width: 32%; min-width: 200px; max-height: 350px; border: 1px solid #ddd; display: flex; flex-direction: column; padding: 10px; box-sizing: border-box; margin-bottom: 1rem;">
    <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
      <img src="/media/pc-w8qNtSXyF1d5tf9fRx7bRNMG6Ga2_Yuri_02_red-orange_response_counts_plot_RedOrange.png" alt="Red/Orange Response Counts Plot" style="display: block; max-width: 100%; max-height: 100%; object-fit: contain;">
    </div>
    <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Response Counts</p>
  </div>

  <!-- Bottom Image 2 -->
  <div style="width: 32%; min-width: 200px; max-height: 350px; border: 1px solid #ddd; display: flex; flex-direction: column; padding: 10px; box-sizing: border-box; margin-bottom: 1rem;">
    <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
      <img src="/media/pc-NtSXyw8qNtSXyF1d5tf9fRx7bRNMG6Ga2_Yuri_02_red-orange_trial_counts_plot_RedOrange.png" alt="Red/Orange Trial Counts Plot" style="display: block; max-width: 100%; max-height: 100%; object-fit: contain;">
    </div>
    <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Trial Counts per Level</p>
  </div>

  <!-- Bottom Image 3 -->
  <div style="width: 32%; min-width: 200px; max-height: 350px; border: 1px solid #ddd; display: flex; flex-direction: column; padding: 10px; box-sizing: border-box; margin-bottom: 1rem;">
    <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
      <img src="/media/pc-w8qNtSXyF1d5tf9fRx7bRNMG6Ga2_Yuri_02_red-orange_curve_fits_plot_RedOrange.png" alt="Red/Orange Psychometric Curve Fits Plot" style="display: block; max-width: 100%; max-height: 100%; object-fit: contain;">
    </div>
    <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Psychometric Curve Fits</p>
  </div>
</div>

### Demo Video

<div style="text-align: center; margin: 2rem 0;">
  <video width="80%" max-width="700px" controls>
    <source src="/media/pc-Recording%202025-05-03%20105310-20s.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

--- 
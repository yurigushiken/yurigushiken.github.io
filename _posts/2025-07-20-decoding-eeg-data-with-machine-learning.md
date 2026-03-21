---
layout: post
title: "Deep Learning-based Representational Similarity Analysis (RSA)"
date: 2025-07-20 11:00:00 -0400
categories: research machine-learning eeg neuroscience deep-learning lcn-lab
thumbnail: "/media/Screenshot 2025-12-07 052932.png"
subtitle: "Mapping the neural geometry of numerosity using deep learning Representational Similarity Analysis."
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">Deep Learning-based Representational Similarity Analysis for decoding numerosity representations from EEG.</p>
  
  <h3 style="color: #eee;">What we did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Trained compact CNN (EEGNeX) decoders on every numerosity pair (1-6) to measure brain representational distances.</li>
    <li>Generated Representational Dissimilarity Matrices (RDMs) that reveal the PI-to-ANS transition and divisibility effects.</li>
    <li>Controlled for visual confounds (pixel area) via RSA-style partial correlations and deterministic LOSO splits.</li>
    <li>Nested, subject-aware CV (outer LOSO, inner GroupKFold) so Optuna, early stopping, and refits stay leak-free. outer folds ensemble.</li>
    <li><a href="https://github.com/yurigushiken/eeg_nn" style="color: #7cc5ff;">View project on GitHub</a></li>
  </ul>
</div>

<details style="margin-bottom: 20px; background-color: #282c34; padding: 15px; border-radius: 5px; border: 1px solid #444;">
  <summary style="cursor: pointer; font-weight: bold; color: #7cc5ff; font-size: 1.2em;">Read Full Project Details...</summary>
  <div style="padding-top: 15px; color: #bbb;" markdown="1">

This project came from a question in our EEG work on numerical cognition. Instead of looking only at averaged signals, I wanted to test whether machine learning could compare how different numerosities relate to one another across the full EEG pattern. I wanted an approach that stayed close to the trial-level data while still giving us a way to think about the structure of the representation space, not just whether one condition was bigger or smaller than another.

To do that, I built a workflow around pairwise decoding and representational similarity analysis. The main challenge was setting up the analysis carefully so subjects stayed separated, visual confounds were accounted for, and the output was actually useful for research. Much of the work was deciding how to format the data, how to split training and test sets, and how to make the runs consistent.

For now I am keeping this page at the project-summary level rather than posting the full analysis and interpretation here. Once our write-up is ready, I plan to link the paper or preprint so readers can see the full motivation, methods, and results in the proper publication format.

  </div>
</details>

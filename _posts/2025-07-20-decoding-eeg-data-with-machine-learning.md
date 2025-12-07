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

# EEG Deep Learning for Numerical Cognition

A deep learning pipeline for decoding numerical representations from 128-channel EEG data. This project implements **Deep Learning-based Representational Similarity Analysis (RSA)** to map the neural geometry of the Parallel Individuation (PI) and Approximate Number System (ANS).

## Scientific Motivation

### The Two-Systems Hypothesis

Cognitive neuroscience proposes two distinct systems for processing quantities:

1. **Parallel Individuation (PI):** Processes small numbers via rapid, precise "object files."
2. **Approximate Number System (ANS):** Processes larger numbers via magnitude estimation, where precision follows Weber's law.

### The Geometric Debate

While the existence of these systems is established, the precise neural geometry of the transition remains debated. Does the brain switch systems abruptly? Are small numbers represented as distinct "slots," or do they form a categorical cluster?

**This project asks:** Can we use Convolutional Neural Networks (CNNs) to map the representational state space of numerosity?

Specifically:
- **The Boundary:** Can we decode the exact transition between the precision of PI and the approximation of ANS?
- **The Structure:** Is there a unique representational geometry within the small-number range?
- **Grouping:** Does the brain utilize grouping mechanisms to represent composite numbers?

## Study Background

This project analyzes data from a numerical oddball task (N=24 adults, 6,480 trials). Participants viewed dot arrays while EEG was recorded. Unlike traditional ERP analyses that average signals across electrodes, we apply **Deep Learning RSA** to decode fine-grained spatiotemporal patterns from raw, single-trial data.

## What This Pipeline Does

This repository implements a rigorous pipeline that uses a compact CNN (**EEGNeX**) as a distance metric for Representational Similarity Analysis.

Instead of standard correlation-based RSA, we:
1. Train neural networks to distinguish every possible pair of numerosities.
2. Use **decoding accuracy** as the measure of representational dissimilarity.
3. Construct a **Representational Dissimilarity Matrix (RDM)** to visualize the neural geometry.
4. Control for visual confounds (pixel area) using partial correlation analysis.

## Findings

### Uncovering the Neural State Space

By projecting our Deep Learning RDM into 2D space (Multidimensional Scaling), we uncovered a non-linear architecture of number processing in the adult brain.

**1. System Distinctness & Boundary:**  
We identified a representational boundary that delineates the limit of the object-tracking system. We confirm the existence of two distinct neural codes for small versus large quantities, with a clear transition between them.

**2. Structure Within Object Tracking:**  
The subitizing range is not composed of uniformly distinct slots. Instead, numerosities 2-4 form a similarity cluster, with numerosity 1 remaining uniquely decodable.

**3. The Divisibility Effect:**  
Classification accuracy is higher for prime pairs (e.g., 3 vs 5) than for factor-multiple pairs (e.g., 3 vs 6), revealing a previously unreported grouping heuristic in the neural state space. Numerosity 5 behaves as a hinge between systems and is more separable from small numbers than numerosity 6.

### Robustness to Visual Confounds
We performed a rigorous control analysis to ensure these results were not driven by low-level visual features.

## Supported Workflows

The pipeline supports end-to-end RSA execution:

* 
sa_binary: Trains pairwise classifiers across 10 random seeds using Leave-One-Subject-Out (LOSO) cross-validation.
* 
sa_pixel_control: Performs post-hoc statistical analysis to regress out pixel confounds from the brain RDM.
* generate_rsa_tables: Produces publication-ready LaTeX tables of pairwise decoding statistics (Holm-corrected).

## Features

- **Leak-Free Validation:** Subject-aware splits ensure no participant data appears in both train and test.
- **Constitutional Rigor:** All parameters must be explicitly specified via YAML.
- **Automated RSA:** End-to-end scripts for training, RDM generation, and Multidimensional Scaling (MDS) visualization.
- **Explainable AI:** Integrated Gradients highlight spatiotemporal feature importance.
- **Statistical Rigor:** Deterministic seeding, permutation testing, and partial correlation analysis for confounds.
- **Full Provenance:** Every run logs model class, library versions, hardware, and seeds.

  </div>
</details>

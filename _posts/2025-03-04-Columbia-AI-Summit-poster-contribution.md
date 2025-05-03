---
layout: post
title: "Columbia AI Summit - poster contribution"
date: 2025-03-04 14:00:00 -0400
categories: academic research
---

<div style="text-align: center; margin-bottom: 2rem;">
  <img src="https://raw.githubusercontent.com/yurigushiken/yurigushiken.github.io/main/media/poster-eye-track-ml.jpg"
       alt="Eye-Track-ML Poster"
       style="max-width: 100%; height: auto;" />
  <p>
    <a href="https://drive.google.com/file/d/1lyNk8Ul3Oee55g5OEn9xrU0beRvYMDWP/view" target="_blank">
      Download Poster PDF
    </a>
  </p>
</div>

<div style="display: flex; justify-content: space-between; margin-bottom: 2rem;">
  <div style="width: 32%; text-align: center;">
    <img src="https://raw.githubusercontent.com/yurigushiken/yurigushiken.github.io/main/media/columbiaAIsummeit-20250304_133837.jpg"
         alt="Columbia AI Summit 3"
         style="width: 100%; height: auto;" />
  </div>
  <div style="width: 32%; text-align: center;">
    <img src="https://raw.githubusercontent.com/yurigushiken/yurigushiken.github.io/main/media/columbiaAIsummeit-20250304_123812.jpg"
         alt="Columbia AI Summit 2"
         style="width: 100%; height: auto;" />
  </div>
  <div style="width: 32%; text-align: center;">
    <img src="https://raw.githubusercontent.com/yurigushiken/yurigushiken.github.io/main/media/columbiaAIsummeit-20250304_144451.jpg"
         alt="Columbia AI Summit 1"
         style="width: 100%; height: auto;" />
  </div>
</div>

## Eye-Track-ML: A Machine Learning Pipeline for Automated Frame-by-Frame Coding of Eye-Tracking Videos

Our project, Eye-Track-ML, is a pipeline for automating eye-tracking video analysis using computer vision models, YOLOv11 and SAM2.1. We developed this solution to address the challenge of manually coding over 6+ hours of video data (600,000 frames) from our infant event representation study. The pipeline combines YOLOv11 for image classification and object detection with SAM2.1 for object segmentation. 
For event labeling our pipeline achieves 100% accuracy, and for object labeling we achieve ~94%.

We found that human verification remains necessary for detecting subtle patterns and edge cases. However, our system establishes a strong baseline for consistency, requiring human verifiers to correct only about ~6% of data points. This is a dramatic reduction in manual labor. 

[YOLO documentation](https://docs.ultralytics.com/)
[Segment Anything Model (SAM) repository](https://github.com/facebookresearch/segment-anything)
[How to train YOLOv11 on custom data](https://blog.roboflow.com/yolov11-how-to-train-custom-data/)
[Fine-tuning SAM 2.1](https://blog.roboflow.com/fine-tune-sam-2-1/)
 
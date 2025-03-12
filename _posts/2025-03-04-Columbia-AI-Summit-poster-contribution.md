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
    <a href="https://raw.githubusercontent.com/yurigushiken/yurigushiken.github.io/main/media/poster-eye-track-ml.pdf" target="_blank">
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

Our project, Eye-Track-ML, is a pipeline for automating eye-tracking video analysis using computer vision models, YOLO and SAM. We developed this solution to address the challenge of manually coding over 6+ hours of video data (600,000 frames) from our infant event representation study. The pipeline combines YOLOv11 for image classification and object detection with SAM2.1 for object segmentation. For event labeling our pipeline achieves 100% accuracy, and for object labeling we achieve ~94.26% accuracy. In other words, with Eye-Track-ML, 100% of the classificaiton coding and ~94% of the object coding is automated!

Our pipeline involves six sequential steps: breaking videos into frames, classifying events, detecting objects, mapping gaze positions to semantic entities, consolidating results into participant datasheets, and verifying results. The combined SAM+YOLO approach with 10px mask dilation achieves 94.24% accuracy, outperforming the YOLO-only approach by 5.36%. 

Despite the high accuracy of our automated approach, we found that human verification remains necessary for detecting subtle patterns and edge cases. However, our system establishes a strong baseline for consistency, requiring human verifiers to correct only about 6% of data points. This is a dramatic reduction in manual labor. potentially transforming how eye-tracking studies are conducted in cognitive neuroscience research.

https://docs.ultralytics.com/
https://github.com/facebookresearch/segment-anything
https://blog.roboflow.com/yolov11-how-to-train-custom-data/
https://blog.roboflow.com/fine-tune-sam-2-1/
 
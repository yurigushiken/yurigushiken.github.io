---
layout: post
title: "Columbia AI Summit - poster contribution"
date: 2024-03-04 14:00:00 -0400
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

## Eye-Track-ML: A Machine Learning Pipeline for Automated Frame-by-Frame Coding of Eye-Tracking Videos

The Columbia AI Summit provided a valuable platform to showcase our research on automated eye-tracking analysis. Our poster presentation highlighted the Eye-Track-ML pipeline, an innovative solution to the labor-intensive challenge of manually coding eye-tracking videos in developmental research. Traditional methods often require researchers to painstakingly annotate each frame, a process that becomes prohibitively time-consuming when analyzing the hundreds of thousands of frames in typical studies. This bottleneck has frequently led researchers to omit object coding entirely, limiting the depth and scope of insights that can be drawn from eye-tracking data.

Our methodology emerged from a need to code approximately 600,000 frames of eye-tracking data from 71 videos (totaling over 6 hours), requiring precise identification of what participants were looking at in each frame. Drawing on our experience with computer vision models, we developed an automated pipeline combining YOLOv11 for object detection and event classification with SAM2.1 for precise object segmentation. The pipeline processes participant videos through five stages: frame extraction, event classification, object detection (with optional segmentation), gaze mapping using rule-based logic, and consolidation into structured CSV datasheets. We trained these models on 600 diverse frames, with additional training on challenging scenes like hugging where multiple objects appear in close proximity.

The results demonstrated remarkable efficiency gains, with only 10% of machine learning predictions requiring human correction. Our approach offers two processing options with different performance tradeoffs: YOLO-only inference completes in approximately 4 minutes, providing rectangular bounding boxes with an inherent "aura" around objects, while the YOLO+SAM combination takes about 30 minutes but delivers precise object contours with customizable mask dilation for optimal fixation assignment. The pipeline creates standardized datasheets for behavioral research while maintaining adaptability to diverse contexts, significantly streamlining the annotation process, improving consistency, and enabling rapid, scalable workflows for eye-tracking research. 
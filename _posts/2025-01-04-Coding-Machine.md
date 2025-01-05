---
layout: post
title: "infant eye-tracking coding machine"
date: 2025-01-04 12:00:00 -0400
categories: Automation Tools
---

We began with older video data (collected ~2003).  
We coded the video for...

---

## How the Project Achieves Its Objective

**Video Preprocessing:**  
Standardize and extract frames with `0_1024resizer.py`, ensuring all later steps handle a consistent format.

**Detection & Segmentation:**  
Run `1_inference_restore.py` to detect relevant objects (blue dot, toys, faces, hands, etc.). Store both numeric data (JSON) and annotated images.

**Classification:**  
Use `2_video_classify.py` to place frames into broad event categories. This organizes each frame from a simple object detection level to a higher-level event timeline.

**Refinement:**  
`3_correct_event_labels.py` ensures event data remains consistent over entire segments or trials.

**Quality Check:**  
`4_content_checker.py` confirms that you haven’t lost or missed any frames during the pipeline.

**Frame-by-Frame Data Assembly:**  
`5_datasheet.py` gathers “What/Where” details from the detection JSON, producing a readable CSV.

**Merging & Consolidation:**  
`6_consolidation.py` unites classification results with the datasheet data, adding participant info (infant/adult, age).

**Final Corrections:**  
`7_csv_correction.py` applies known fixes to any mislabeled events.

**Video Rendering:**  
Lastly, `8_movie.py` creates an MP4 with text overlays drawn from the final CSV, giving you a frame-accurate movie where each moment includes relevant annotations.

---

[Language and Cognitive Lab]: https://www.tc.columbia.edu/lcl/  
[GitHub Repository]: https://github.com/yurigushiken/google-shared-drive-exporter

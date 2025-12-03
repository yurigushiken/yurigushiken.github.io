---
layout: post
title: "Look Who's Giving: Developmental Shift in Attention From Object Movement to the Faces"
date: 2025-11-29 10:00:00 -0500
categories: research lcn-lab development
thumbnail: /media/infant_eye-tracking_v2.jpg
subtitle: "Infant eye-tracking analysis of give/show events."
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">A Language and Cognitive Neuroscience Lab study examining how infants parse "give" events using eye-tracking.</p>
  
  <h3 style="color: #eee;">What we did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Collected eye-tracking data from 7-11-month-old infants and adults viewing "Give" and "Show" events.</li>
    <li>Quantified gaze-transition strategies (Toy <-> Body, Face <-> Toy, Face <-> Face) to capture the developmental shift from tracking motion paths to linking social agents with objects.</li>
    <li>Validated that the shift disappears in inverted (upside-down) controls, indicating semantic rather than low-level visual drivers.</li>
    <li><a href="https://github.com/yurigushiken/ier_analysis" style="color: #7cc5ff;">View project on GitHub</a></li>
  </ul>
</div>

<!-- Top (Main) Swiper -->
<div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #333; margin-bottom: 10px; background-color: #383838;" class="swiper givingSwiperMain">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/infant_eye-tracking_v2.jpg" alt="Eye-tracking setup for give/show tasks" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Eye-tracking calibration for 7-11-month-old participants.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/infant_event-representations-v2-gif.gif" alt="Event representation heatmaps" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Aggregated gaze heatmaps highlighting argument roles.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/infant_eye-tracking_datasheet.png" alt="Scan path analysis sheet" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Transition matrices quantifying Toy <-> Body vs. Face <-> Toy strategies.</p>
      </div>
    </div>
  </div>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>

<!-- Bottom (Thumbs) Swiper -->
<div thumbsSlider="" class="swiper givingSwiperThumbs" style="height: 100px; box-sizing: border-box; padding: 10px 0;">
  <div class="swiper-wrapper">
    <div class="swiper-slide" style="width: 33%; height: 100%; opacity: 0.4;">
      <img src="/media/infant_eye-tracking_v2.jpg" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 33%; height: 100%; opacity: 0.4;">
      <img src="/media/infant_event-representations-v2-gif.gif" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 33%; height: 100%; opacity: 0.4;">
      <img src="/media/infant_eye-tracking_datasheet.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
  </div>
</div>

<script>
  document.addEventListener('DOMContentLoaded', function () {
    var givingThumbs = new Swiper(".givingSwiperThumbs", {
      spaceBetween: 10,
      slidesPerView: 3,
      freeMode: true,
      watchSlidesProgress: true,
      clickable: true,
      centeredSlides: false,
    });
    var givingMain = new Swiper(".givingSwiperMain", {
      spaceBetween: 10,
      navigation: {
        nextEl: ".givingSwiperMain .swiper-button-next",
        prevEl: ".givingSwiperMain .swiper-button-prev",
      },
      thumbs: {
        swiper: givingThumbs,
      },
      loop: true,
      keyboard: {
        enabled: true,
      },
    });
  });
</script>

<style>
  .givingSwiperThumbs .swiper-slide-thumb-active {
    opacity: 1 !important;
  }
</style>

<details style="margin-bottom: 20px; background-color: #282c34; padding: 15px; border-radius: 5px; border: 1px solid #444;">
  <summary style="cursor: pointer; font-weight: bold; color: #7cc5ff; font-size: 1.2em;">Read Full Project Details...</summary>
  <div style="padding-top: 15px; color: #bbb;" markdown="1">

### Abstract (shortened)

How do pre-linguistic infants carve dynamic "give" events into the argument roles required for language (giver, recipient, object)? We analyzed gaze transitions from 7-to-11-month-old infants and adults viewing "Give" and "Show" videos.

- **Younger infants (7 months)** prioritized Toy <-> Body transitions, closely following the physical motion of the object.
- **Older infants and adults** shifted to Face <-> Toy and Face <-> Face transitions, linking agents and objects rather than pure motion paths.
- **Inverted controls** removed this shift, suggesting the change reflects semantic understanding, not low-level visual salience.

Taken together, the data reveal a developmental move from tracking the physics of motion to constructing a relational structure that could support verb learning for actions like "give" and "show".

  </div>
</details>

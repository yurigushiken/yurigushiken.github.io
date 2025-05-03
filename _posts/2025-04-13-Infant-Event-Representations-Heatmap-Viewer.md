---
layout: post
title: "Analysis Tool: Infant Event Representations Heatmap Viewer"
date: 2025-04-13 10:00:00 -0400
categories: tools development research visualization
---

<!-- Swiper -->
<!-- Top (Main) Swiper -->
<div style="--swiper-navigation-color: #333; --swiper-pagination-color: #333; margin-bottom: 10px;" class="swiper heatmapSwiper2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between; background: #fff;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/2025-04-13 overlay-gif Recording 2025-04-13 200426_1.gif" alt="Infant Event Representations with Heatmap Overlay - Demo 1" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Desktop view</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between; background: #fff;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/2025-04-13 overlay-gif20250413_200549.gif" alt="Infant Event Representations with Heatmap Overlay - Demo 2" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Smartphone view</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between; background: #fff;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-7months-man.png" alt="7 Months Heatmap (Man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">7 Months Heatmap (Man)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between; background: #fff;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-man.png" alt="Man Heatmap" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Man Heatmap</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between; background: #fff;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-adult-man.png" alt="Adult Heatmap (Man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Adult Heatmap (Man)</p>
      </div>
    </div>
  </div>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>

<!-- Bottom (Thumbs) Swiper -->
<div thumbsSlider="" class="swiper heatmapSwiper" style="height: 100px; box-sizing: border-box; padding: 10px 0;">
  <div class="swiper-wrapper">
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/2025-04-13 overlay-gif Recording 2025-04-13 200426_1.gif" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/2025-04-13 overlay-gif20250413_200549.gif" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/lcn-heatmap-gwo-7months-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/lcn-heatmap-gwo-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/lcn-heatmap-gwo-adult-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
  </div>
</div>
<!-- End Swiper -->


We made a website/tool for data analysis "Infant Event Representations Heatmap Overlay Viewer". This tool aids in our ongoing research (a follow-up to the original Infant Event Representations study, Gordon, 2003). Our team can now select stimulus videos and toggle heatmap overlays representing the gaze patterns of different age groups (infants aged 7-11 months and adults). We are inspired by Universal Design for Learning (UDL) principles, which we were introduced to at Teachers College. These principles stress and value multiple means of representation.


This work is for the [Language and Cognitive Neuroscience Lab](https://www.tc.columbia.edu/lcl/).

<div style="text-align: center; margin: 2rem 0;">
  <img src="/media/2025-04-13 overlays Screenshot 2025-04-13 194556.png" alt="Heatmap Overlay Viewer Interface Left Panel" style="width: 80%; max-width: 600px; height: auto; object-fit: contain; border: 1px solid #ddd;">
  <p style="text-align: center; font-size: 0.9em; margin-top: 5px;">GitHub repository</p>
</div>

<!-- Swiper JS Initialization Script -->
<script>
  document.addEventListener('DOMContentLoaded', function () {
    var swiperThumbs = new Swiper(".heatmapSwiper", {
      spaceBetween: 10,
      slidesPerView: 4, // Adjust number of thumbs visible
      freeMode: true,
      watchSlidesProgress: true,
      clickable: true,
    });
    var swiperMain = new Swiper(".heatmapSwiper2", {
      spaceBetween: 10,
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      thumbs: {
        swiper: swiperThumbs,
      },
      loop: true, // Enable looping
    });
  });
</script>

<!-- Basic CSS for Thumb Opacity on Active -->
<style>
  .swiper-slide-thumb-active {
    opacity: 1 !important;
  }
</style>

---
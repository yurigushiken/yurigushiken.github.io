---
layout: post
title: "Analysis Tool: Infant Event Representations Heatmap Viewer"
date: 2025-04-13 10:00:00 -0400
categories: tools development research visualization lcn-lab
thumbnail: /media/2025-04-13 overlay-gif Recording 2025-04-13 200426_1.gif
subtitle: "A web-based data analysis tool (version 2) and website to host it."
---

<div style="padding: 15px; border: 1px solid #555; border-radius: 5px; margin-bottom: 20px; background-color: #333a45;">
  <h3 style="margin-top: 0; color: #eee;">What it is:</h3>
  <p style="font-size: 1.1em; color: #ccc;">A web-based data analysis tool (version 2).</p>
  
  <h3 style="color: #eee;">What we did:</h3>
  <ul style="font-size: 1.1em; list-style-type: disc; padding-left: 20px; color: #ccc;">
    <li>Simultaneous view all eye-tracking heatmaps overlaid on stimulus videos.</li>
    <li>Enable comparison of gaze patterns across different age groups (e.g., infants 7-11 months, adults).</li>
    <li>Support research into infant event representations (follow-up to Gordon, 2003).</li>
    <li>Create features for selecting videos and toggling heatmap overlays.</li>
  </ul>
  
  <!-- Add links here if applicable, e.g., GitHub repo, Live Demo -->
  <!-- 
  <p style="font-size: 1.1em;">
    <a href="[Link to GitHub Repo]" style="color: #7cc5ff;">View Code on GitHub</a> | 
    <a href="[Link to Live Tool]" style="color: #7cc5ff;">Access Live Tool</a>
  </p>
  -->
</div>

<!-- Swiper -->
<!-- Top (Main) Swiper -->
<div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #333; margin-bottom: 10px; background-color: #383838;" class="swiper heatmapSwiper2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #888; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/2025-04-13 overlay-gif Recording 2025-04-13 200426_1.gif" alt="Infant Event Representations with Heatmap Overlay - Demo 1" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Desktop view. This is a screenshot of the desktop view; we didn't provide the whole website in order to protect the privacy of our data.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #888; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/2025-04-13 overlay-gif20250413_200549.gif" alt="Infant Event Representations with Heatmap Overlay - Demo 2" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Smartphone view</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #888; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-adult-man.png" alt="Adult Heatmap (Man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Adult Heatmap (AOI: man)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #888; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-7months-man.png" alt="7 Months Heatmap (Man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">7 Months Heatmap (AOI: man)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #888; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-eight-man.png" alt="8 Months Heatmap (AOI: man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">8 Months Heatmap (AOI: man)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #888; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-nine-man.png" alt="9 Months Heatmap (AOI: man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">9 Months Heatmap (AOI: man)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #888; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-ten-man.png" alt="10 Months Heatmap (AOI: man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">10 Months Heatmap (AOI: man)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #888; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-eleven-man.png" alt="11 Months Heatmap (AOI: man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">11 Months Heatmap (AOI: man)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #888; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-all-heat-man.png" alt="All Infants Heatmap (AOI: man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">All Infants Heatmap (AOI: man)</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div style="text-align: center; border: 1px solid #888; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
        <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
          <img src="/media/lcn-heatmap-gwo-all-man.png" alt="All Participants Heatmap (AOI: man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
        </div>
        <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">All Participants Heatmap (AOI: man)</p>
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
      <img src="/media/lcn-heatmap-gwo-adult-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/lcn-heatmap-gwo-7months-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/lcn-heatmap-gwo-eight-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/lcn-heatmap-gwo-nine-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/lcn-heatmap-gwo-ten-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/lcn-heatmap-gwo-eleven-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/lcn-heatmap-gwo-all-heat-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
    <div class="swiper-slide" style="width: 25%; height: 100%; opacity: 0.4;">
      <img src="/media/lcn-heatmap-gwo-all-man.png" style="width:100%; height: 100%; object-fit: cover;" />
    </div>
  </div>
</div>
<!-- End Swiper -->

<details style="margin-bottom: 20px; background-color: #282c34; padding: 15px; border-radius: 5px; border: 1px solid #444;">
  <summary style="cursor: pointer; font-weight: bold; color: #7cc5ff; font-size: 1.2em;">Read Full Project Details...</summary>
  <div style="padding-top: 15px; color: #bbb;" markdown="1">
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
      slidesPerView: 4,
      freeMode: true,
      watchSlidesProgress: true,
      clickable: true,
      centeredSlides: true,
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
      loop: true,
      keyboard: {
        enabled: true,
      },
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
</div>
</details>
---
layout: post
title: "Analysis Tool: Infant Event Representations Heatmap Viewer"
date: 2025-04-13 10:00:00 -0400
categories: tools development research visualization
---

<!-- Glide.js Carousel -->
<div class="glide" id="heatmap-carousel">
  <div class="glide__track" data-glide-el="track">
    <ul class="glide__slides">
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/2025-04-13 overlay-gif Recording 2025-04-13 200426_1.gif" alt="Infant Event Representations with Heatmap Overlay - Demo 1" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Desktop view</p>
        </div>
      </li>
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/2025-04-13 overlay-gif20250413_200549.gif" alt="Infant Event Representations with Heatmap Overlay - Demo 2" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Smartphone view</p>
        </div>
      </li>
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/lcn-heatmap-gwo-7months-man.png" alt="7 Months Heatmap (Man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">7 Months Heatmap (Man)</p>
        </div>
      </li>
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/lcn-heatmap-gwo-man.png" alt="Man Heatmap" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Man Heatmap</p>
        </div>
      </li>
      <li class="glide__slide">
        <div style="text-align: center; border: 1px solid #ddd; padding: 10px; height: 400px; display: flex; flex-direction: column; justify-content: space-between;">
          <div style="flex-grow: 1; display: flex; align-items: center; justify-content: center; overflow: hidden;">
            <img src="/media/lcn-heatmap-gwo-adult-man.png" alt="Adult Heatmap (Man)" style="max-width: 100%; max-height: 90%; object-fit: contain;">
          </div>
          <p style="text-align: center; font-size: 0.9em; margin-top: 10px; flex-shrink: 0;">Adult Heatmap (Man)</p>
        </div>
      </li>
    </ul>
  </div>

  <div class="glide__arrows" data-glide-el="controls">
    <button class="glide__arrow glide__arrow--left" data-glide-dir="<">prev</button>
    <button class="glide__arrow glide__arrow--right" data-glide-dir=">">next</button>
  </div>

  <!-- Added Navigation Bullets -->
  <div class="glide__bullets" data-glide-el="controls[nav]" style="text-align: center; margin-top: 10px;">
    <!-- Glide.js will automatically populate buttons here -->
  </div>
</div>
<!-- End Glide.js Carousel -->


We made a website/tool for data analysis "Infant Event Representations Heatmap Overlay Viewer". This tool aids in our ongoing research (a follow-up to the original Infant Event Representations study, Gordon, 2003). Our team can now select stimulus videos and toggle heatmap overlays representing the gaze patterns of different age groups (infants aged 7-11 months and adults). We are inspired by Universal Design for Learning (UDL) principles, which we were introduced to at Teachers College. These principles stress and value multiple means of representation.


This work is for the [Language and Cognitive Neuroscience Lab](https://www.tc.columbia.edu/lcl/).

<div style="text-align: center; margin: 2rem 0;">
  <img src="/media/2025-04-13 overlays Screenshot 2025-04-13 194556.png" alt="Heatmap Overlay Viewer Interface Left Panel" style="width: 80%; max-width: 600px; height: auto; object-fit: contain; border: 1px solid #ddd;">
  <p style="text-align: center; font-size: 0.9em; margin-top: 5px;">GitHub repository</p>
</div>

<!-- Glide.js Initialization Script -->
<script>
  document.addEventListener('DOMContentLoaded', function () {
    new Glide('#heatmap-carousel', {
      type: 'carousel',
      startAt: 0,
      perView: 1,
      // Add other Glide options if needed
    }).mount();
  });
</script>

---
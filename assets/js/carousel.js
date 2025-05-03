document.addEventListener('DOMContentLoaded', () => {
  const carousels = document.querySelectorAll('.image-carousel');

  carousels.forEach(carousel => {
    const slidesContainer = carousel.querySelector('.carousel-slides');
    const slides = carousel.querySelectorAll('.carousel-slide');
    const prevButton = carousel.querySelector('.carousel-button.prev');
    const nextButton = carousel.querySelector('.carousel-button.next');
    const thumbnailsContainer = carousel.querySelector('.carousel-thumbnails');
    let thumbnails = []; // Initialize thumbnails array
    let currentSlide = 0;
    const totalSlides = slides.length;

    // Create thumbnails if container exists
    if (thumbnailsContainer) {
      slides.forEach((slide, index) => {
        const thumb = document.createElement('img');
        thumb.src = slide.querySelector('img').src;
        thumb.alt = `Thumbnail ${index + 1}`;
        thumb.classList.add('thumbnail-item');
        thumb.dataset.index = index;
        thumb.addEventListener('click', () => {
          showSlide(index);
        });
        thumbnailsContainer.appendChild(thumb);
        thumbnails.push(thumb); // Add to array
      });
    }

    function updateThumbnails(activeIndex) {
        thumbnails.forEach((thumb, index) => {
            if (index === activeIndex) {
                thumb.classList.add('active');
            } else {
                thumb.classList.remove('active');
            }
        });
    }

    function showSlide(index) {
      if (index >= totalSlides || index < 0) {
        console.error("Invalid slide index");
        return;
      }
      const offset = -index * 100;
      slidesContainer.style.transform = `translateX(${offset}%)`;
      currentSlide = index;
      if (thumbnails.length > 0) {
        updateThumbnails(currentSlide);
      }
    }

    prevButton.addEventListener('click', () => {
      const newSlide = (currentSlide - 1 + totalSlides) % totalSlides;
      showSlide(newSlide);
    });

    nextButton.addEventListener('click', () => {
      const newSlide = (currentSlide + 1) % totalSlides;
      showSlide(newSlide);
    });

    // Keyboard Navigation
    document.addEventListener('keydown', (e) => {
      // Check if the carousel or its children have focus to avoid global capture
      // This is a basic check; more robust focus management might be needed
      if (document.activeElement === carousel || carousel.contains(document.activeElement)) {
          if (e.key === 'ArrowLeft') {
            prevButton.click();
          } else if (e.key === 'ArrowRight') {
            nextButton.click();
          }
      }
    });

    // Add tabindex to make the carousel focusable for keyboard events
    carousel.setAttribute('tabindex', '0');

    // Initialize
    showSlide(0);
  });
}); 
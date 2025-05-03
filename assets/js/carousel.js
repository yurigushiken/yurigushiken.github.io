document.addEventListener('DOMContentLoaded', () => {
  const carousels = document.querySelectorAll('.image-carousel');

  carousels.forEach(carousel => {
    const slidesContainer = carousel.querySelector('.carousel-slides');
    const slides = carousel.querySelectorAll('.carousel-slide');
    const prevButton = carousel.querySelector('.carousel-button.prev');
    const nextButton = carousel.querySelector('.carousel-button.next');
    let currentSlide = 0;
    const totalSlides = slides.length;

    function showSlide(index) {
      const offset = -index * 100;
      slidesContainer.style.transform = `translateX(${offset}%)`;
      currentSlide = index;
    }

    prevButton.addEventListener('click', () => {
      const newSlide = (currentSlide - 1 + totalSlides) % totalSlides;
      showSlide(newSlide);
    });

    nextButton.addEventListener('click', () => {
      const newSlide = (currentSlide + 1) % totalSlides;
      showSlide(newSlide);
    });

    // Initialize
    showSlide(0);
  });
}); 
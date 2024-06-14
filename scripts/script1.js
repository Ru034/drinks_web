let slideIndex = 0;
showSlides();

function showSlides() {
  let slides = document.getElementsByClassName("slide-show");
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;

  if (slideIndex >= slides.length) {slideIndex = 0}  

  slides[slideIndex].style.display = "block";  

  setTimeout(showSlides, 5000); // Change image every 5 seconds
}

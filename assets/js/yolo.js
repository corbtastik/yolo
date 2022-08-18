// ----------------------------------------------------------------------------------------------------------------
// Copy code snippet functions
// ----------------------------------------------------------------------------------------------------------------
const codeBlocks = document.querySelectorAll('.code-header + .highlighter-rouge');
const codeCopyElements = document.querySelectorAll('.code-header');

codeCopyElements.forEach((codeCopyElement, index) => {
    const code = codeBlocks[index].innerText;
    codeCopyElement.addEventListener('click', () => {
        window.navigator.clipboard.writeText(code);
        codeCopyElement.classList.add('copied');
        const infoText = codeCopyElement.innerHTML.trim();
        codeCopyElement.innerHTML = codeCopyElement.innerHTML + " copied!"
        setTimeout(() => {
            codeCopyElement.innerHTML = infoText;
            codeCopyElement.classList.remove('copied');
        }, 2000);
    });
});
// ----------------------------------------------------------------------------------------------------------------
// Image Grid modal that shows an image when clicked
// ----------------------------------------------------------------------------------------------------------------
const imageModal = document.getElementById("image-modal");
const imageModalContent = document.getElementById("image-modal-content");
const imageModalCaption = document.getElementById("image-modal-caption");
const imageModalClose = document.getElementsByClassName("image-modal-close")[0];
const images = document.querySelectorAll('.image-item');

imageModalClose.onclick = function() {
    imageModal.style.display = "none";
}

images.forEach((image, index) => {
    image.onclick = function() {
        imageModal.style.display = "block";
        imageModalContent.src = this.src;
        imageModalCaption.innerHTML = this.alt;
    };
});
// ----------------------------------------------------------------------------------------------------------------
// Function to scale an image when clicked
// ----------------------------------------------------------------------------------------------------------------
const imageElements = document.querySelectorAll('.image');

imageElements.forEach((imageElement, index) => {
    imageElement.addEventListener("click", () => {
        imageElement.classList.toggle("max");
    });
});

// ----------------------------------------------------------------------------------------------------------------
// Lightbox modal
// ----------------------------------------------------------------------------------------------------------------
// Open the Modal
function openModal() {
    document.getElementById("lb-myModal").style.display = "block";
}

// Close the Modal
function closeModal() {
    document.getElementById("lb-myModal").style.display = "none";
}

var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
    showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    let i;
    const slides = document.getElementsByClassName("lb-mySlides");
    const dots = document.getElementsByClassName("lb-demo");
    const captionText = document.getElementById("lb-caption");
    if(n > slides.length) {
        slideIndex = 1;
    }
    if(n < 1) {
        slideIndex = slides.length;
    }
    for(i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for(i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" lb-active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " lb-active";
    captionText.innerHTML = dots[slideIndex - 1].alt;
}
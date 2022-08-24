// ----------------------------------------------------------------------------------------------------------------
// Copy code snippet functions
// ----------------------------------------------------------------------------------------------------------------
// const codeBlocks = document.querySelectorAll('.code-header + .highlighter-rouge');
// const codeCopyElements = document.querySelectorAll('.code-header');
//
// codeCopyElements.forEach((codeCopyElement, index) => {
//     const code = codeBlocks[index].innerText;
//     codeCopyElement.addEventListener('click', () => {
//         window.navigator.clipboard.writeText(code);
//         codeCopyElement.classList.add('copied');
//         const infoText = codeCopyElement.innerHTML.trim();
//         codeCopyElement.innerHTML = codeCopyElement.innerHTML + " copied!"
//         setTimeout(() => {
//             codeCopyElement.innerHTML = infoText;
//             codeCopyElement.classList.remove('copied');
//         }, 2000);
//     });
// });
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
// Lightbox logic
// ----------------------------------------------------------------------------------------------------------------
let lbIsOpen = false;
let slideIndex = 0;
// Handle keydown events for lightbox next and prev links.
document.onkeydown = function(event) {
    if(lbIsOpen) {
        if (event.key === 'ArrowLeft' || (event.key === '<' && event.shiftKey)) {
            plusSlides(-1);
        } else if (event.key === 'ArrowRight' || (event.key === '>' && event.shiftKey)) {
            plusSlides(1);
        }
    }
};

function openModal() {
    document.getElementById("lb-modal").style.display = "block";
    lbIsOpen = true;
}

function closeModal() {
    document.getElementById("lb-modal").style.display = "none";
    lbIsOpen = false;
}

showSlides(slideIndex);

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    let i;
    const slides = document.getElementsByClassName("lb-slides");
    const captionText = document.getElementById("lb-caption");
    if(n >= slides.length) {
        slideIndex = 0;
    }
    if(n < 0) {
        slideIndex = slides.length - 1;
    }
    for(i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slides[slideIndex].style.display = "block";
    captionText.innerHTML = slides[slideIndex].children[0].alt;
}
/*
 * Yolo Javascript functions for single page sites
 * https://github.com/corbtastik/yolo
 * MIT License
 */
(function (window){

    class Lightbox {
        constructor(name) {
            this.name = name;
            this.isOpen = false;
            this.slideIndex = 0;
            this.showSlides(this.slideIndex);
        }

        static create(name) {
            return new Lightbox(name);
        }
    }

    Lightbox.prototype.name = function() {
        return this.name;
    };

    Lightbox.prototype.openModal = function() {
        document.getElementById("lb-modal-" + this.name).style.display = "block";
        this.isOpen = true;
    };

    Lightbox.prototype.closeModal = function() {
        document.getElementById("lb-modal-" + this.name).style.display = "none";
        this.isOpen = false;
    };

    Lightbox.prototype.plusSlides = function(n) {
        this.showSlides(this.slideIndex += n);
    };

    Lightbox.prototype.currentSlide = function(n) {
        this.showSlides(this.slideIndex = n);
    };

    Lightbox.prototype.showSlides = function(n) {
        let i;
        const modal = document.getElementById("lb-modal-" + this.name);
        const slides  = modal.getElementsByClassName("lb-slides");
        const captionText = document.getElementById("lb-caption-" + this.name);
        if(n >= slides.length) {
            this.slideIndex = 0;
        }
        if(n < 0) {
            this.slideIndex = slides.length - 1;
        }
        for(i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slides[this.slideIndex].style.display = "block";
        captionText.innerHTML = slides[this.slideIndex].children[0].alt;
    };

    class Yolo {
        constructor() {
            this.lightboxes = new Map();
        }
        static create() {
            const yolo = new Yolo();
            yolo.scaleImages();
            yolo.copySnippet();
            return yolo;
        }
    }

    Yolo.prototype.scaleImages = function() {
        const images = document.querySelectorAll('.image');
        images.forEach((image, index) => {
            image.addEventListener("click", () => {
                image.classList.toggle("max");
            });
        });
    };

    Yolo.prototype.copySnippet = function() {
        const blocks = document.querySelectorAll(
            '.code-header + .highlighter-rouge');
        const elements = document.querySelectorAll(
            '.code-header');
        elements.forEach((element, index) => {
            const code = blocks[index].innerText;
            element.addEventListener('click', () => {
                window.navigator.clipboard.writeText(code).then(r => {
                    console.log("writeText then callback");
                });
                element.classList.add('copied');
                const infoText = element.innerHTML.trim();
                element.innerHTML = element.innerHTML + " copied!"
                setTimeout(() => {
                    element.innerHTML = infoText;
                    element.classList.remove('copied');
                }, 2000);
            });
        });
    };

    Yolo.prototype.lightbox = function(name) {
        if(this.lightboxes.has(name)) {
            return this.lightboxes.get(name);
        }
        if(this.lightboxes.size > 20) {
            throw "Error: Yolo lightbox limit!";
        }
        this.lightboxes.set(name, Lightbox.create(name));
        return this.lightboxes.get(name);
    };
    // Set Yolo as global on window
    window.Yolo = Yolo.create();

})(window);
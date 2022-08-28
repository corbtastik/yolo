// ============================================================================
// Yolo Javascript functions
// https://github.com/corbtastik/yolo
// MIT License
// ============================================================================
(function (window){
    // ------------------------------------------------------------------------
    // Hack wrapper around console.log for debugging, off by default.
    // ------------------------------------------------------------------------
    class Console {
        static println(text) {
            if(Console.enabled()) {
                console.log(text);
            }
        }
        static enabled() {
            return false;
        }
    }

    // ------------------------------------------------------------------------
    // Lightbox class for lightbox logic
    // ------------------------------------------------------------------------
    class Lightbox {
        constructor(name) {
            this.name = name;
            this.isOpen = false;
            this.slideIndex = 0;
            this.showSlides(this.slideIndex);
        }

        static create(name) {
            Console.println("Lightbox.create for name=" + name);
            return new Lightbox(name);
        }

        static dom(name) {
            return document.getElementById("lb-modal-" + name);
        }

        static domSlides(name) {
            const modal = Lightbox.dom(name);
            return modal.getElementsByClassName("lb-slides");
        }

        static domCaption(name) {
            return document.getElementById("lb-caption-" + name);
        }
    }

    Lightbox.prototype.name = function() {
        return this.name;
    };

    Lightbox.prototype.openModal = function() {
        Console.println("Lightbox.openModal: " + this.name);
        Lightbox.dom(this.name).style.display = "block";
        this.isOpen = true;
    };

    Lightbox.prototype.closeModal = function() {
        Console.println("Lightbox.closeModal: " + this.name);
        Lightbox.dom(this.name).style.display = "none";
        this.isOpen = false;
    };

    Lightbox.prototype.plusSlides = function(n) {
        Console.println("Lightbox.plusSlides: name=" + this.name + " slide=" + n);
        this.showSlides(this.slideIndex += n);
    };

    Lightbox.prototype.currentSlide = function(n) {
        Console.println("Lightbox.currentSlide: name=" + this.name + " slide=" + n);
        this.showSlides(this.slideIndex = n);
    };

    Lightbox.prototype.showSlides = function(n) {
        let i;
        const slides = Lightbox.domSlides(this.name);
        const caption = Lightbox.domCaption(this.name);
        if(n >= slides.length) {
            this.slideIndex = 0;
        }
        if(n < 0) {
            this.slideIndex = slides.length - 1;
        }
        for(i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        Console.println("Lightbox.showSlides: name=" + this.name + " slide=" + this.slideIndex);
        slides[this.slideIndex].style.display = "block";
        caption.innerHTML = slides[this.slideIndex].children[0].alt;
    };

    // ------------------------------------------------------------------------
    // Yolo class for the site logic
    // ------------------------------------------------------------------------
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
                Console.println("Yolo.scaleImage to max: " + image.src);
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
                    Console.println("Yolo.copySnippet to clipboard.");
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
        // Return lightbox instance if it exists
        if(this.lightboxes.has(name)) {
            Console.println("Yolo.lightbox returning existing Lightbox: name=" + name);
            return this.lightboxes.get(name);
        }
        // Protection against lightbox craziness
        if(this.lightboxes.size > 20) {
            Console.println("Yolo.lightbox max instances " + this.lightboxes.size + " reached.");
            throw "Error: Yolo lightbox limit!";
        }
        // Create new lightbox instance, setup event listener for prev, next links
        const lightbox = Lightbox.create(name);
        Console.println("Yolo.lightbox, created new instance named: " + name);
        window.document.addEventListener("keydown", event => {
            if(lightbox.isOpen) {
                if (event.key === "ArrowLeft" || (event.key === "<" && event.shiftKey)) {
                    Console.println("Yolo.lightbox keydown ArrowLeft clicked.");
                    lightbox.plusSlides(-1);
                } else if (event.key === "ArrowRight" || (event.key === ">" && event.shiftKey)) {
                    Console.println("Yolo.lightbox keydown ArrowRight clicked.");
                    lightbox.plusSlides(1);
                }
            }
        });
        this.lightboxes.set(name, lightbox);
        return this.lightboxes.get(name);
    };

    // ------------------------------------------------------------------------
    // Expose Yolo on the window object.
    //   Call from HTML: onclick="Yolo.lightbox("lb-images").openModal();"
    // ------------------------------------------------------------------------
    window.Yolo = Yolo.create();
})(window);
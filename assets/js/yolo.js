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
        static log(text) {
            Console.println("YOLO LOG " + new Date().toUTCString() + ": " + text);
        }
        static error(text) {
            Console.println("YOLO ERR " + new Date().toUTCString() + ": " + text);
        }
        static enabled() {
            return true;
        }
    }

    // ------------------------------------------------------------------------
    // ImageGrid class for image-grid logic
    // ------------------------------------------------------------------------
    class ImageGrid {
        constructor(name) {
            this.name = name;
        }

        static create(name) {
            Console.log("ImageGrid.create for name=" + name);
            return new ImageGrid(name);
        }

        static dom(name) {
            return document.getElementById("ig-" + name);
        }

        static domTarget(name) {
            return document.getElementById("ig-target-" + name);
        }
    }

    ImageGrid.prototype.name = function() {
        return this.name;
    }

    ImageGrid.prototype.openImage = function(imageId) {
        Console.log("ImageGrid.openImage: " + this.name);
        // Hide the grid
        ImageGrid.dom(this.name).style.display = "none";
        // Show the ig-target, hide all images, show the one passed in.
        const imageTarget = ImageGrid.domTarget(this.name);
        const images = imageTarget.getElementsByTagName('img');
        for(let i = 0; i < images.length; i++) {
            const caption = document.getElementById(this.name + "-caption-" + i);
            if(images[i].id === imageId) {
                images[i].style.display = "block";
                caption.style.display = "block";
            } else {
                images[i].style.display = "none";
                caption.style.display = "none";
            }
        }
        imageTarget.classList.toggle("no-display");
        imageTarget.style.display = "block";
    };

    ImageGrid.prototype.closeImage = function() {
        Console.log("ImageGrid.closeImage: " + this.name);
        // Hide images and ig-target
        const imageTarget = ImageGrid.domTarget(this.name);
        const images = imageTarget.getElementsByTagName('img');
        for(let i = 0; i < images.length; i++) {
            const caption = document.getElementById(this.name + "-caption-" + i);
            caption.style.display = "none";
            images[i].style.display = "none";
        }
        imageTarget.style.display = "none";
        imageTarget.classList.toggle("no-display");
        // Show the grid
        ImageGrid.dom(this.name).style.display = "block";
    };
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
            Console.log("Lightbox.create for name=" + name);
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
        Console.log("Lightbox.openModal: " + this.name);
        Lightbox.dom(this.name).style.display = "block";
        this.isOpen = true;
    };

    Lightbox.prototype.closeModal = function() {
        Console.log("Lightbox.closeModal: " + this.name);
        Lightbox.dom(this.name).style.display = "none";
        this.isOpen = false;
    };

    Lightbox.prototype.plusSlides = function(n) {
        Console.log("Lightbox.plusSlides: name=" + this.name + " slide=" + n);
        this.showSlides(this.slideIndex += n);
    };

    Lightbox.prototype.currentSlide = function(n) {
        Console.log("Lightbox.currentSlide: name=" + this.name + " slide=" + n);
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
        Console.log("Lightbox.showSlides: name=" + this.name + " slide=" + this.slideIndex);
        slides[this.slideIndex].style.display = "block";
        caption.innerHTML = slides[this.slideIndex].children[0].alt;
    };

    // ------------------------------------------------------------------------
    // Table of Contents class for adding toc to a Yolo post/page and sidebar
    // ------------------------------------------------------------------------
    class Toc {
        static create() {
            if(document.getElementById("toc")) {
                const headers = Toc.getHeaders();
                document.getElementById("toc").classList.add("nav-menu");
                document.getElementById("toc").innerHTML = Toc.buildTree(headers);
            }
            if(document.getElementById("toc-sidebar")) {
                const headers = Toc.getHeaders();
                document.getElementById("toc-sidebar").classList.add("nav-menu");
                document.getElementById("toc-sidebar").innerHTML = Toc.buildTree(headers);
            }
        }

        static getHeaders() {
            const hTags = ["h2", "h3", "h4", "h5", "h6"];
            const elements = document.querySelectorAll(hTags.join());
            const headers = [];

            elements.forEach(element => {
                if(!element.classList.contains("no-toc")) {
                    const text = element.innerText;
                    const id = text.toLowerCase().split(" ").join("-");
                    element.setAttribute("id", id);
                    headers.push({id, text, level: hTags.indexOf(element.tagName.toLowerCase())
                    });
                }
            });

            return headers;
        }

        static buildTree(headers) {
            const list = [];
            let nextLevelHeaders = [];
            let lastLevel = -1;

            if (headers.length === 0) {
                return "";
            }

            const buildSubTree = () => {
                if (nextLevelHeaders.length > 0) {
                    list[list.length - 1] += Toc.buildTree(nextLevelHeaders);
                }
            };

            headers.forEach(h => {
                if (lastLevel !== -1 && lastLevel < h.level) {
                    nextLevelHeaders.push(h);
                    return;
                }

                buildSubTree();

                lastLevel = h.level;
                list.push(`<a href="#${h.id}">${h.text}</a>`);
                nextLevelHeaders = [];
            });

            buildSubTree();

            const listHTML = list.map(i => `<li>${i}</li>`).join("");
            return `<ul>${listHTML}</ul>`;
        }
    }
    // ------------------------------------------------------------------------
    // Yolo class for the site logic
    // ------------------------------------------------------------------------
    class Yolo {
        constructor() {
            this.lightboxes = new Map();
            this.imageGrids = new Map();
        }
        static create() {
            const yolo = new Yolo();
            // Initialize image scaling
            yolo.scaleImages();
            // Initialize copy code snippets
            yolo.copySnippet();
            // Initialize dark / light theme toggle
            yolo.toggleTheme();
            // Initialize sidebar
            yolo.initSidebar();
            // Initialize toc on page/post and sidebar
            yolo.initToc();
            return yolo;
        }
    }

    Yolo.prototype.initSidebar = function() {
        const sidebar = document.getElementById('sidebar');
        const sidebarNav = document.getElementById('toc-sidebar');
        if(sidebar !== null) {
            Console.log("Sidebar is enabled, adding event listener.");
            sidebar.addEventListener('click', function() {
                const sidebarWidth = sidebar.style.width;
                if(sidebarWidth === "50%") {
                    sidebar.style.width = "0.5rem";
                    sidebar.classList.remove("open")
                    sidebarNav.style.opacity = "0";
                } else {
                    sidebar.style.width = "50%";
                    sidebar.classList.add("open")
                    sidebarNav.style.opacity = "1";
                }
            }, false);
        } else {
            Console.log("Sidebar is disabled.");
        }
    };

    Yolo.prototype.scaleImages = function() {
        const images = document.querySelectorAll('.image');
        images.forEach((image, index) => {
            image.addEventListener("click", () => {
                Console.log("Yolo.scaleImage to max: " + image.src);
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
                    Console.log("Yolo.copySnippet to clipboard.");
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
            Console.log("Yolo.lightbox returning existing Lightbox: name=" + name);
            return this.lightboxes.get(name);
        }
        // Protection against lightbox craziness
        if(this.lightboxes.size > 20) {
            Console.log("Yolo.lightbox max instances " + this.lightboxes.size + " reached.");
            throw "Error: Yolo lightbox limit, perhaps start another single page site?";
        }
        // Create new lightbox instance, setup event listener for prev, next links
        const lightbox = Lightbox.create(name);
        Console.log("Yolo.lightbox, created new instance named: " + name);
        window.document.addEventListener("keydown", event => {
            if(lightbox.isOpen) {
                if (event.key === "ArrowLeft" || (event.key === "<" && event.shiftKey)) {
                    Console.log("Yolo.lightbox keydown ArrowLeft clicked.");
                    lightbox.plusSlides(-1);
                } else if (event.key === "ArrowRight" || (event.key === ">" && event.shiftKey)) {
                    Console.log("Yolo.lightbox keydown ArrowRight clicked.");
                    lightbox.plusSlides(1);
                }
            }
        });
        this.lightboxes.set(name, lightbox);
        return this.lightboxes.get(name);
    };

    Yolo.prototype.imageGrid = function(name) {
        // Return image-grid instance if it exists
        if(this.imageGrids.has(name)) {
            return this.imageGrids.get(name);
        }
        // Protect against image-grid craziness
        if(this.imageGrids.size > 20) {
            Console.error("Yolo.imageGrid max instances " + this.imageGrids.size + " reached.");
            throw "Error: Yolo imageGrid limit, perhaps start another single page site?";
        }
        // Create new image-grid instance
        const imageGrid = ImageGrid.create(name);
        Console.log("Yolo.imageGrid, created new instance named: " + name);
        this.imageGrids.set(name, imageGrid);
        return this.imageGrids.get(name);
    };

    Yolo.prototype.toggleTheme = function() {
        const yoloSite = document.getElementById("yolo-site");
        const themeDot = document.getElementById("theme-dot");

        if(yoloSite === null || themeDot === null) {
            Console.error("Yolo Site and/or Theme Dot is null, perhaps verify <body id=\"yolo-site\">");
            return;
        }

        themeDot.addEventListener("click", function() {
            const activeTheme = localStorage.getItem("active-theme");
            if(activeTheme === "dark-theme") {
                Console.log("Switching active-theme to light-theme");
                yoloSite.classList.remove("dark-theme");
                localStorage.setItem("active-theme", "light-theme");
                yoloSite.classList.add("light-theme");
            } else if(activeTheme === "light-theme") {
                Console.log("Switching active-theme to dark-theme");
                yoloSite.classList.remove("light-theme");
                localStorage.setItem("active-theme", "dark-theme");
                yoloSite.classList.add("dark-theme");
            } else if(activeTheme == null) {
                Console.log("The active-theme is null, setting to light-theme.");
                localStorage.setItem("active-theme", "light-theme");
                yoloSite.classList.add("light-theme");
            } else {
                Console.error("The active-theme is set to an invalid theme value: "
                    + activeTheme + ", setting to light-theme.");
                localStorage.setItem("active-theme", "light-theme");
                yoloSite.classList.add("light-theme");
            }
        });

        window.addEventListener("load", function() {
            const activeTheme = localStorage.getItem("active-theme");
            Console.log("Window load, active-theme: " + activeTheme);
            if(activeTheme === "dark-theme") {
                localStorage.setItem("active-theme", "dark-theme");
                yoloSite.classList.add("dark-theme");
            } else {
                localStorage.setItem("active-theme", "light-theme");
                yoloSite.classList.add("light-theme");
            }
            Console.log("Window load, transitioning to opacity 1");
            yoloSite.style.opacity = "1";
        });
    }

    Yolo.prototype.initToc = function() {
        Toc.create();
    }
    // ------------------------------------------------------------------------
    // Expose Yolo on the window object.
    //   Call from HTML: onclick="Yolo.lightbox("lb-images").openModal();"
    // ------------------------------------------------------------------------
    window.Yolo = Yolo.create();
})(window);
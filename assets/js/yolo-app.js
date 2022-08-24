/*
 * Yolo v1.5
 * Javascript module for Yolo single page sites
 * https://github.com/corbtastik/yolo
 * MIT License
 */
(function (window){

    let yolo = {};
    yolo.lightbox = function() {
        console.log("lightbox function called");
    };
    yolo.initImages = function() {
        console.log("images function called");
    };
    yolo.initCopySnippet = function() {
        console.log("initCopySnippet function called");
        const blocks = document.querySelectorAll(
            '.code-header + .highlighter-rouge');
        const elements = document.querySelectorAll(
            '.code-header');
        elements.forEach((
            element, index) => {
            const code = blocks[index].innerText;
            element.addEventListener('click', () => {
                window.navigator.clipboard.writeText(code);
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
    yolo.version = function() {
        return "yolo-v1.5";
    }
    // call one-time setup functions
    yolo.initCopySnippet();
    window.Yolo = yolo;

})(window);
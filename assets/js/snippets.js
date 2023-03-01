/**
 * On DOMContentLoaded setup click event listeners for each snippet header.
 * When clicked copy the code snippet to clipboard.
 */
document.addEventListener("DOMContentLoaded", function() {
  'use strict';

  /**
   * Selects the highlighter-rouge block that is a sibling of the preceding code-header element.
   * @type {NodeListOf<Element>}
   */
  const snippetBlocks = document.querySelectorAll('.yolo-code-header + .highlighter-rouge');
  /**
   * Selects all code-header elements.
   * @type {NodeListOf<Element>}
   */
  const snippetHeaders = document.querySelectorAll('.yolo-code-header');

  snippetHeaders.forEach((element, index) => {
    const code = snippetBlocks[index].innerText;
    element.addEventListener('click', () => {
      window.navigator.clipboard.writeText(code).then(r => {
        console.log("snippets copy to clipboard.");
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
});
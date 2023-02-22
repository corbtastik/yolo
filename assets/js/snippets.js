document.addEventListener("DOMContentLoaded", function() {
  'use strict';

  /**
   * Selects the highlighter-rouge block that is a sibling of the preceding code-header element.
   * @type {NodeListOf<Element>}
   */
  const blocks = document.querySelectorAll(
    '.code-header + .highlighter-rouge');
  const elements = document.querySelectorAll(
    '.code-header');

  blocks.forEach((element, index) => {
    console.log(element.toString());
  });

  elements.forEach((element, index) => {
    console.log(element.toString());
  });
});
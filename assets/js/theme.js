document.addEventListener("DOMContentLoaded", function() {
  'use strict';

  const themeDot = document.querySelector(".theme-dot");

  /**
   * If the themeDot element is on the page initialize
   * click event listener to toggle between light and dark modes.
   */
  if(themeDot) {
    themeDot.addEventListener("click", () => {
      toggleMode();
    });
  }

  /**
   * Initialize theme mode on DOM load.
   */
  const activeTheme = localStorage.getItem("theme");
  if(activeTheme === "dark") {
    console.log("DOMContentLoaded: Active theme mode is dark.")
    localStorage.setItem("theme", "dark");
    document.documentElement.setAttribute("dark", "");
  } else {
    console.log("DOMContentLoaded: Active theme mode is light.")
    localStorage.removeItem("theme");
    document.documentElement.removeAttribute("dark");
  }

  /**
   * toggleMode: Check localStorage for "theme" key value
   * and toggle between light and dark modes.
   */
  function toggleMode() {
    const activeTheme = localStorage.getItem("theme");
    if(activeTheme === "dark") {
      console.log("Toggling theme mode from dark to light.")
      localStorage.removeItem("theme");
      document.documentElement.removeAttribute("dark");
    } else {
      console.log("Toggling theme mode from light to dark.")
      localStorage.setItem("theme", "dark");
      document.documentElement.setAttribute("dark", "");
    }
  }

});
document.addEventListener("DOMContentLoaded", function() {
  'use strict';

  const themeToggle = document.getElementById("theme-toggle");

  /**
   * If the themeToggle element is on the page initialize
   * click event listener to toggle between light and dark modes.
   */
  if(themeToggle) {
    themeToggle.addEventListener("click", () => {
      toggleMode();
    });
  }

  /**
   * Initialize theme mode on DOM load.
   */
  const activeTheme = localStorage.getItem("theme");
  if(activeTheme === "dark") {
    console.log("DOMContentLoaded: Active theme mode is dark.");
    localStorage.setItem("theme", "dark");
    document.documentElement.setAttribute("dark", "");
    themeToggle.innerText = "light_mode";
  } else {
    console.log("DOMContentLoaded: Active theme mode is light.");
    localStorage.setItem("theme", "light");
    document.documentElement.setAttribute("light", "");
    themeToggle.innerText = "dark_mode";
  }

  /**
   * toggleMode: Check localStorage for "theme" key value
   * and toggle between light and dark modes.
   */
  function toggleMode() {
    const activeTheme = localStorage.getItem("theme");
    if(activeTheme === "dark") {
      console.log("Toggling theme mode from dark to light.");
      localStorage.removeItem("theme");
      localStorage.setItem("theme", "light");
      document.documentElement.removeAttribute("dark");
      document.documentElement.setAttribute("light", "");
      // toggle icon to dark mode
      themeToggle.innerText = "dark_mode";
    } else {
      console.log("Toggling theme mode from light to dark.");
      localStorage.removeItem("theme");
      localStorage.setItem("theme", "dark");
      document.documentElement.removeAttribute("light");
      document.documentElement.setAttribute("dark", "");
      // toggle icon to light mode
      themeToggle.innerText = "light_mode";
    }
  }

});
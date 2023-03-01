/**
 * Custom JavaScript sample that makes an AJAX request.
 **/
(function (window, document) {
  // execute javascript in strict mode
  'use strict';

  function SiteAjaxRequest(resourceURL) {
    this.resourceURL = resourceURL;
    this.httpRequest = new XMLHttpRequest();
  }

  SiteAjaxRequest.prototype.get = function() {
    if(!this.httpRequest) {
      console.log("Giving up, cannot create XMLHttpRequest instance.");
      return false;
    }
    this.httpRequest.onreadystatechange = this.handleRequest;
    this.httpRequest.open("GET", this.resourceURL);
    this.httpRequest.send();
  }

  SiteAjaxRequest.prototype.handleRequest = function() {
    if(this.readyState === XMLHttpRequest.DONE) {
      if(this.status === 200) {
        createView(JSON.parse(this.responseText), "site-info-ajax", "site-button-ajax");
      } else {
        console.log("Oh no that's a SiteRequest error!");
      }
    }
  }

  /**
   * Handle ajax button click
   */
  function onAjaxClick() {
    new SiteAjaxRequest("/site.json").get();
  }

  function SiteFetchRequest(resourceURL) {
    this.resourceURL = resourceURL;
  }

  SiteFetchRequest.prototype.get = function() {
    fetch(this.resourceURL)
      .then((response) => response.json())
      .then((data) => {
        createView(data, "site-info-fetch", "site-button-fetch");
      });
  }

  /**
   * Handle fetch button click
   */
  function onFetchClick() {
    new SiteFetchRequest("/site.json").get();
  }

  /**
   * Create an unordered list for the Site Info (site.json) data.
   * @param siteInfo: Site info JSON object
   * @param targetId: Element id to create for result (site-info-ajax or site-info-fetch)
   * @param buttonId: Button id that triggered request (site-button-ajax or site-button-fetch)
   */
  function createView(siteInfo, targetId, buttonId) {
    // Remove site-info element if it exists and create a new one below
    if(document.getElementById(targetId)) {
      document.getElementById(targetId).remove();
    }

    // Create an unordered list to render site-info into
    const element = document.createElement("ul");
    element.setAttribute("id", targetId);
    // Get the parent element
    const parent = document.getElementById(buttonId).parentElement;
    // Append dynamic data to parent element
    parent.append(element);

    // Create textNodes for each site-info property
    const retrievedAtNode = document.createTextNode("Retrieved at: " + new Date().toLocaleString());
    const nameNode = document.createTextNode("Name: " + siteInfo.name);
    const titleNode = document.createTextNode("Title: " + siteInfo.title);
    const descriptionNode = document.createTextNode("Description: " + siteInfo.description);    
    const versionNode = document.createTextNode("Version: " + siteInfo.version);
    const brandThemeNode = document.createTextNode("Brand Theme: " + siteInfo.brand.theme);
    const brandSyntaxNode = document.createTextNode("Brand Syntax: " + siteInfo.brand.syntax);
    const buildDateNode = document.createTextNode("Build Date: " + siteInfo.buildDate);

    // Add retrieve time first
    let listItem = document.createElement("li");
    listItem.appendChild(retrievedAtNode);
    document.getElementById(targetId).appendChild(listItem);

    // Append each list item as a child of the unordered list
    listItem = document.createElement("li");
    listItem.appendChild(nameNode);
    document.getElementById(targetId).appendChild(listItem);
        
    listItem = document.createElement("li");
    listItem.appendChild(titleNode);
    document.getElementById(targetId).appendChild(listItem);

    listItem = document.createElement("li");
    listItem.appendChild(descriptionNode);
    document.getElementById(targetId).appendChild(listItem);

    listItem = document.createElement("li");
    listItem.appendChild(versionNode);
    document.getElementById(targetId).appendChild(listItem);
    
    listItem = document.createElement("li");
    listItem.appendChild(brandThemeNode);
    document.getElementById(targetId).appendChild(listItem);

    listItem = document.createElement("li");
    listItem.appendChild(brandSyntaxNode);
    document.getElementById(targetId).appendChild(listItem);

    listItem = document.createElement("li");
    listItem.appendChild(buildDateNode);
    document.getElementById(targetId).appendChild(listItem);
  }

  /*
   * Run on module load
   */
  document.getElementById("site-button-ajax").addEventListener("click", onAjaxClick);
  document.getElementById("site-button-fetch").addEventListener("click", onFetchClick);

})(window, document);
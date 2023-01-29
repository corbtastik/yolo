---
layout: default
tags:
- yolo
- single-page
- jekyll
- starter
---

## The Yolo Starter

The Yolo Starter is a tool to generate a Yolo site with custom settings.

### Customizations

Yolo supports only single page sites, thus all customizations apply to the one-and-only-one `index.md` page.

### Yolo settings

The Yolo `settings.json` object represents the core site settings for a Yolo site. The `settings` object is converted into a jekyll `_config.yml` file.


```json
{
  "title": "Yolo on my friend",
  "name": "Yolo",
  "description": "Loveable single page sites",
  "style": "corbs",
  "align": "left",
  "logo": "assets/images/site/logo.png",
  "sidebar": {
    "logo": "assets/images/site/logo.png"
  }
}
```

* `_data/fonts.yml`
* `_data/images.yml`
* `_data/lb-images.yml`
* `_data/ig-images.yml`
* `_data/prezos.yml`
* `_data/videos.yml`
* `_sass/yolo/themes`
* `assets/images/site`

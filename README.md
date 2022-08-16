# Yolo

Yolo is a single page theme cut from the cloth of "[Solo](http://chibicode.github.io/solo)" which was previously developed and ultimately deprecated by [Shu Uesugi](https://github.com/chibicode).

__Goals for Yolo:__

* __Keep living the Solo dream__: Support one and only one page.
* __Keep it simple__: No dependencies other than [jekyll](https://jekyllrb.com/).
* __Make it customizable__: Bring your own colors and fonts.

The one and only one "implementation" page is [`index.md`](/index.md).

---

## Usage

* You need [jekyll](https://jekyllrb.com/).

```bash
git clone https://github.com/corbtastik/yolo.git
cd yolo
jekyll build
jekyll serve
```

---

## Style

The colors, typography and site logo can be styled to your tastes.

* Copy one of the examples in `_sass/yolo/themes` to a new scss file.
* Provide color values for each variable.
* Enable by setting `style` in `_config.yml`.

---

### Demo w/ "corbs" theme

Yolo demo - [https://corbtastik.github.io/yolo](https://corbtastik.github.io/yolo)

## Backlog

### ASAP

* [DONE] Image resize on click
  * [DONE]Maintain aspect ratio of source image
  * [DONE] Recompute border radius when at max
* [DONE] Add custom font configurations
  * [DONE] Primary font and code font
* Organize javascript code, remove from scripts.html, link javascript source into scripts.html
* Test and fix responsiveness, collapsing and stacking.
* Add figure to image for caption display
  * Test default alignment and center alignment
* Add custom 404.html page
* Ensure themes have a hyperlink color that's different from other text colors.
* Image Flexbox, add next and previous links on image modal
* Try different `back-to-top` styles
* Try different `table` styles
* Add option to collapse header (h2, h3, h4, h5, h6) sections
* Add eye candy to image modal close button
* Implement pill tags that can be added to page
* Scrub and implement consistent size and dimension units.

### Mid-term

* Move images into Google Cloud Storage, delete images in assets folder, link to GCS images
* Build new Yolo container images, push to quay
* Look into customizing syntax highlighter
* Add support for Github Gist

### Long-term

* Yolo for [Eleventy](https://www.11ty.dev/).
* Yolo for [Astro](https://astro.build/).

## License

[MIT License](/LICENSE)

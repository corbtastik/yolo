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

## Themes

The colors, typography and site logo can be styled to your tastes. Yolo doesn't export a theme gem, nor does it implement an "according to hoyle" Jekyll theme. "Theming" for Yolo is simply accomplished by providing a theme scss file as outlined below. 

* Copy one of the examples in `_sass/yolo/themes` to a new scss file.
* Provide color values for each variable.
* Enable by setting `style` in `_config.yml`.

---

### Demo w/ "corbs" theme

Yolo demo - [https://corbtastik.github.io/yolo](https://corbtastik.github.io/yolo)

## Backlog

### ASAP

__Work-in-progress:__

* Create helper for adding/updating custom Google Fonts and document on index.md.
* Create helper for creating new theme scss files and document on index.md.
* Create helper for creating a new lightbox with images and document on index.md.
* Make working with includes easier.
* Add support for Github Gist.
* Add figure to image for caption display.
  * Test default alignment and center alignment.
* Scrub and implement consistent size and dimension units.

__Complete:__

* [DONE] Image resize on click.
  * [DONE] Maintain aspect ratio of source image.
  * [DONE] Recompute border radius when at max.
* [DONE] Add custom font configurations.
  * [DONE] Primary font and code font.
* [DONE] Implement pill tags that can be added to page header.
* [DONE] Refactor color css names.
* [DONE] Add theme colors swatches and fonts to Yolo Content.
* [DONE] Try different `table` styles.
* [DONE] Refactor current image-grid to use Bulma flexbox grid.
* [DONE] Organize javascript code, remove from scripts.html, link javascript source into scripts.html.
* [DONE] Add custom 404.html page.
* [DONE] Test and fix responsiveness, collapsing and stacking.
* [DONE] Theme verification.
  * [DONE] Review each theme for readability.
  * [DONE] Ensure themes have a hyperlink color that's different from other text colors.
* [DONE] Image flexbox, add radius to images.
* [DONE] Refactor theme classes, refactor flexbox, table color vars.
* [DONE] Image Flexbox, add next and previous links on image modal.
* [DONE] Add theme variable for table header color and use in code-header and table headers.
* [DONE] Verify Image responsiveness and aspect ratios.


### Mid-term

* [DONE] Integrate Bulma's responsive flexbox component.
* Move images into Google Cloud Storage, delete images in assets folder, link to GCS images.
* Build new Yolo container images, push to quay.
* Add option to collapse header (h2, h3, h4, h5, h6) sections.
* Look into customizing syntax highlighter.
* Refactor syntax highlighter.
* Support for including Instagram images.

### Long-term

* Yolo for [Eleventy](https://www.11ty.dev/).
* Yolo for [Astro](https://astro.build/).

### Tips

* __Margin vs Padding:__
  * __Margin:__ Use a margin when you want to adjust the spacing of an element.
    * Margins aren’t a part of the element.
  * __Padding:__ Use padding when you want to adjust the appearance of the element itself.
    * Padding is part of the element.

## License

[MIT License](/LICENSE)

# Yolo

Yolo is a single page theme cut from the cloth of "[Solo](http://chibicode.github.io/solo)" which was previously developed and ultimately deprecated by [Shu Uesugi](https://github.com/chibicode).

__Goals for Yolo:__

* __Keep living the Solo dream__: Support one and only one page.
* __Keep it simple__: No dependencies other than [jekyll](https://jekyllrb.com/).
* __Make it customizable__: Bring your own colors and fonts.

The one and only one "implementation" page is the one you're looking at.

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

{% include sampler.html %}

---

### Example w/ "corbs" theme

Yolo demo - [https://corbtastik.github.io/yolo](https://corbtastik.github.io/yolo)

## Backlog

* Yolo for [Eleventy](https://www.11ty.dev/).
* Yolo for [Astro](https://astro.build/).

## License

[MIT License](/LICENSE)

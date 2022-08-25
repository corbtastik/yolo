# Yolo

Yolo is a single page theme cut from the cloth of "[Solo](http://chibicode.github.io/solo)" which was previously developed and ultimately deprecated by [Shu Uesugi](https://github.com/chibicode).

## Goals for Yolo

### 1. Keep living the Solo dream

Support one-and-only-one page but treat it like a pet.

### 2. Keep it simple

No dependencies other than [jekyll](https://jekyllrb.com/).

### 3. Make it customizable

Bring your own colors and fonts.

> The one and only one "implementation" page is [`index.md`](/index.md).

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

Yolo doesn't implement an "according to hoyle" Jekyll theme, but the colors, typography and site logo can be styled to your tastes.

> "Theming" for Yolo is accomplished by providing a custom theme scss file as outlined below.

* Copy one of the themes in `_sass/yolo/themes` to a new scss file.
* Provide color values for each variable.
* Enable by setting `site.style` in `_config.yml`.

---

## Yolo demo

Yolo on - [https://corbtastik.github.io/yolo](https://corbtastik.github.io/yolo)

## License

[MIT License](/LICENSE)

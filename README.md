# Solo

Solo the "[og](http://chibicode.github.io/solo)" version was previously developed, maintained and ultimately deprecated by [Shu Uesugi](https://github.com/chibicode).

> [Solo](http://chibicode.github.io/solo) is a Jekyll theme that supports **single-page websites** only, but supports them well. Yes, it's responsive. - _[Shu Uesugi](https://github.com/chibicode)_

The Solo must go on, so I'm gonna continue curating it as time allows.

__Goals for continuing Solo:__

* __Keep living the Solo dream__: Support one and only one page.
* __Keep it simple__: No dependencies other than [jekyll](https://jekyllrb.com/).
* __Make it customizable__: Bring your own colors and fonts.

## Usage

* You need [jekyll](https://jekyllrb.com/).

```bash
git clone https://github.com/corbtastik/solo.git
cd solo
jekyll build
jekyll serve
```

## Customize

The colors, typography and site logo can be customized to your tastes. The "corbs" theme is enabled by default.

* To add a custom theme, copy one of the examples in `_sass/solo/themes` to a new scss file. For example `_mytheme.scss`.
* Provide color values for each variable.
* Enable your theme by editing `_sass/_solo.scss` and importing it.

### Example w/ "corbs" theme

Solo demo - [https://corbtastik.github.io/solo](https://corbtastik.github.io/solo)

![Solo example](/static/images/solo-example.png "Solo Example")

## Backlog

* Scope creating Solo for [Eleventy](https://www.11ty.dev/).
* Scope creating Solo for [Astro](https://astro.build/).

## License

[MIT License](/LICENSE)

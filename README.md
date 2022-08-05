# Solo

Solo the "[og](http://chibicode.github.io/solo)" version was previously developed, maintained and ultimately deprecated by [Shu Uesugi](https://github.com/chibicode).

> [Solo](http://chibicode.github.io/solo) is a Jekyll theme that supports **single-page websites** only, but supports them well. Yes, it's responsive. - _[Shu Uesugi](https://github.com/chibicode)_

I'm a Solo fan, so much so that I'm continuing development when I can. Being able to generate single page docs with a bit of custom style is __mucho__ useful.

__Goals for continuing Solo:__

* Keep living the Solo dream, support one and only one page.
* Keep it simple, no dependencies other than [jekyll](https://jekyllrb.com/).
* Make it customizable, bring your own colors and fonts.

The one and only one "implementation" page is [`index.md`](/index.md)

## Usage

* You need [jekyll](https://jekyllrb.com/).

```bash
git clone https://github.com/corbtastik/solo.git
cd solo
jekyll build
jekyll serve
```

### Customize

The colors, typography and site logo can be customized to your tastes. The "corbs" theme is enabled by default.

* To add a custom theme, copy one of the examples in `_sass/solo/themes` to a new scss file. For example `_mytheme.scss`.
* Provide color values for each variable.
* Enable your theme by editing `_sass/_solo.scss` and importing it.

### Example w/ "corbs" theme

![Solo example](/static/images/solo-example.png "Solo Example"){:width="300"}

### License

[MIT License](/LICENSE)

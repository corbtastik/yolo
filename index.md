---
layout: default
links:
- yolo,https://github.com/corbtastik/yolo
- jekyll,https://jekyllrb.com
ext_js:
  - custom
ext_css:
  - custom
---

## Howdy

Yolo is laser focused on static single page sites, and while anyone can Yolo, it's purposely built for writers,
techies, and picture taking folk.

> _I don't always use single-page sites but when I do, I [yolo](https://github.com/corbtastik/yolo)._

### Goals for Yolo
{:.no-toc}

#### 1. Live the best single page life.
{:.no-toc}

* Pamper single page sites like we pamper our pets.

#### 2. Strive for simplicity.
{:.no-toc}

* No dependencies other than [jekyll](https://jekyllrb.com/).

#### 3. Make it customizable
{:.no-toc}

* Bring your own [theme](#themes) and [syntax-highlighting](#syntax-highlighting).

---

## Getting Started

You need [jekyll](https://jekyllrb.com/).

{% include components/code.html label="Get Yolo" %}
```bash
git clone https://github.com/corbtastik/yolo.git
cd yolo
jekyll build
jekyll serve
```

{% include components/arrow.html link="#howdy" %}

---

## Branding

Yolo implements "branding" on two fronts, __themes__ and __syntax themes__.

Yolo doesn't implement an "according to hoyle" [gem based theme](https://jekyllrb.com/docs/themes/), but the colors and fonts can be customized as outlined below.

> __Note:__
>   * "Theming" for Yolo is accomplished by providing a custom `scss` file in `_sass/yolo/themes`. Each theme must specify "light" and "dark" values to support switching between the two modes.
>   * Add font-family in `_data/fonts.yml` to customize what fonts are available.

1. Create a new `scss` file in `_sass/yolo/themes/`.
2. Customize the theme values for light and dark modes.
3. Enable by setting `brand.theme` in `_data/settings.yml`.

### Theme Set
{:.no-toc}

The following __themes__ are included out-of-the-box.

| Theme                                                   | Description                             |
|---------------------------------------------------------|-----------------------------------------|
| [domino](https://corbtastik-yolo-domino.surge.sh)       | Ebony and ivory with a touch of green   |
| [dusk](https://corbtastik-yolo-dusk.surge.sh)           | Reminiscent of a good ole Texas evening |
| [newspaper](https://corbtastik-yolo-newspaper.surge.sh) | Read all about this greyscale theme     |
| [newwave](https://corbtastik-yolo-newwave.surge.sh)     | A bright fluorescent 80s'ish theme      |
| [reveal](https://corbtastik-yolo-reveal.surge.sh)       | A theme for those big reveals           |
| [rgb](https://corbtastik-yolo-rgb.surge.sh)             | A minimal black and white theme         |
| [yolo](https://corbtastik-yolo.surge.sh)                | The default theme for Yolo sites        |

---

### Key Colors
{:.no-toc}

Key colors provide the foundation of your theme and should [contrast](https://en.wikipedia.org/wiki/Contrast_(vision)) or [complement](https://en.wikipedia.org/wiki/Complementary_colors) each other in [hue](https://en.wikipedia.org/wiki/Hue).

There are __3__ key color variables for both __light__ and __dark__ modes.

{% include components/flexbox.html columns="1" fill="primary-color" %}
{% include components/flexbox.html columns="1" fill="secondary-color" %}
{% include components/flexbox.html columns="1" fill="tertiary-color" %}

---

### Container Colors
{:.no-toc}

Each key color has 1 corresponding "_container_" color, which represents a container inset within the `primary-color`.

> __Note:__ The `primary-container-color` is applied to the background of code blocks, and blockquotes such as this.
> > Thus, if your `primary-color` is white, then you might select a grey color for the `primary-container-color` to create a slight contrast between the two.

{% include components/flexbox.html columns="1" fill="primary-container-color" %}
{% include components/flexbox.html columns="1" fill="secondary-container-color" %}

---

### On Colors
{:.no-toc}

On colors are for elements that are placed "_on_" the corresponding key or container color. On colors should contrast with the color they are being placed on top of to increase readability.

> __Example:__ If your `primary-color` is white then a logical `on-primary-color` would be black.

{% include components/flexbox.html columns="1" fill="on-primary-color" %}
{% include components/flexbox.html columns="1" fill="on-primary-container-color" %}
{% include components/flexbox.html columns="1" fill="on-secondary-color" %}
{% include components/flexbox.html columns="1" fill="on-secondary-container-color" %}
{% include components/flexbox.html columns="1" fill="on-tertiary-color" %}

---

### General Colors
{:.no-toc}

Links are prominent on web pages, so it gets its own variable - [link-color](https://github.com/corbtastik/yolo).

> __Note:__ Generally, it's a good idea to have a distinct color, consistency applied to links.

{% include components/flexbox.html columns="1" fill="link-color" %}

The `neutral-color` and `on-neutral-color` variables are general use colors.

> __Note:__ As mentioned in the "[On Colors](#on-colors)" section, it's best to have an "on" color that contrasts with the underlying color.

{% include components/flexbox.html columns="1" fill="neutral-color" %}
{% include components/flexbox.html columns="1" fill="on-neutral-color" %}

{% include components/arrow.html link="#howdy" %}

---

### Typography
{:.no-toc}

Yolo's fonts can be customized as outlined in [Themes](#themes).

#### Three Families
{:.no-toc}

Primary Font Family - body and most text
{:.is-family-primary}
Secondary Font Family - headers and accent text
{:.is-family-secondary}
Monospaced Font Family - code
{:.is-family-monospace}

##### Primary
{:.no-toc}

size-7 text
{:.is-family-primary .is-size-7}

size-6 text
{:.is-family-primary .is-size-6}

size-5 text
{:.is-family-primary .is-size-5}

size-4 text
{:.is-family-primary .is-size-4}

size-3 text
{:.is-family-primary .is-size-3}

size-2 text
{:.is-family-primary .is-size-2}

size-1 text
{:.is-family-primary .is-size-1}

##### Secondary
{:.no-toc}

size-7 text
{:.is-family-secondary .is-size-7}

size-6 text
{:.is-family-secondary .is-size-6}

size-5 text
{:.is-family-secondary .is-size-5}

size-4 text
{:.is-family-secondary .is-size-4}

size-3 text
{:.is-family-secondary .is-size-3}

size-2 text
{:.is-family-secondary .is-size-2}

size-1 text
{:.is-family-secondary .is-size-1}

##### Monospace
{:.no-toc}

size-7 text
{:.is-family-monospace .is-size-7}

size-6 text
{:.is-family-monospace .is-size-6}

size-5 text
{:.is-family-monospace .is-size-5}

size-4 text
{:.is-family-monospace .is-size-4}

size-3 text
{:.is-family-monospace .is-size-3}

size-2 text
{:.is-family-monospace .is-size-2}

size-1 text
{:.is-family-monospace .is-size-1}

{% include components/arrow.html link="#howdy" %}

---

## Syntax Highlighting

Yolo uses Jekyll's [default syntax highlighting](https://jekyllrb.com/docs/liquid/tags/#code-snippet-highlighting) capabilities provided by [rouge](https://github.com/rouge-ruby/rouge), and adds the ability to use custom `syntax-theme(s)` for light and dark modes.

The following `syntax-theme(s)` are provided out-of-the-box.

| Syntax Theme                                            | Description                            |
|---------------------------------------------------------|----------------------------------------|
| [dracula](https://corbtastik-yolo-dracula.surge.sh)     | A theme for Transylvanian vampires     |
| [monokai](https://corbtastik-yolo-monokai.surge.sh)     | The classic theme for focusing         |
| [neo](https://corbtastik-yolo-neo.surge.sh)             | A bright fluorescent theme             |
| [newspaper](https://corbtastik-yolo-newspaper.surge.sh) | Read all about this greyscale theme    |
| [reveal](https://corbtastik-yolo-reveal.surge.sh)       | A theme for big reveals                |
| [solo](https://corbtastik-yolo-solo.surge.sh)           | Minimal black and white theme          |
| [sprinkles](https://corbtastik-yolo-sprinkles.surge.sh) | A theme that pairs well with cup cakes |
| [yolo](https://corbtastik-yolo.surge.sh)                | The default theme for Yolo sites       |

### Custom Syntax Theme
{:.no-toc}

1. Creating a custom `syntax-theme` is done by adding a `scss` file into `_sass/yolo/syntax-theme` and setting values for each color property for both __light__ and __dark__ modes.
2. To enable a specific `syntax-theme` add it to your `settings.yml` file, as shown below.

{% include components/code.html label="Configure the syntax-theme" %}
```yaml
# -------------------------------------
# Yolo site settings
# -------------------------------------
name: Yolo
title: Yolo on my friend
description: Loveable single pages
theme:
  name: neon
  syntax: neon   # references _sass/yolo/syntax-theme/_neon.scss
```

### Samples
{:.no-toc}

> __Tip:__ Click header to copy a snippet.

{% include components/code.html label="Bash snippet" %}
```bash
#!/bin/bash
function say_howdy() {
  echo "Howdy $1!"
}

if [ $# -ne 1 ]; then
    echo "Usage: Howdy <NAME>"
    exit 1
fi

# Say Howdy
say_howdy $1
```

{% include components/arrow.html link="#howdy" %}

{% include components/code.html label="JavaScript snippet" %}
```javascript
function sayHowdy(name) {
  console.log("Howdy " + name + "!");
}

if(process.argv.length != 3) {
  console.log("Usage: Howdy <NAME>");
  process.exit(1);
}

// Say Howdy
sayHowdy(process.argv[2]);
```

{% include components/arrow.html link="#howdy" %}

---

## Headers

> __Note:__ H1 is reserved for the site header and not shown here.

## H2 Heading
{:.no-toc}

### H3 Heading
{:.no-toc}

#### H4 Heading
{:.no-toc}

##### H5 Heading
{:.no-toc}

###### H6 Heading
{:.no-toc}

{% include components/arrow.html link="#howdy" %}

---

## Paragraph text

[Baseball](https://en.wikipedia.org/wiki/Baseball) is a bat-and-ball sport played between two teams of nine players each, taking turns batting and fielding. The game is in play when a player on the fielding team, called the pitcher, throws a ball that a player on the batting team tries to hit with a bat. The objective of the offensive team (batting team) is to hit the ball into the field of play, away from the other team's players, allowing its players to run the bases, having them advance counter-clockwise around four bases to score what are called "runs". - copied from [Wikipedia](https://en.wikipedia.org/wiki/Baseball).

{% include components/arrow.html link="#howdy" %}

---

## Blockquotes

### Single Blockquote
{:.no-toc}

> In the United States and Canada, professional Major League Baseball (MLB) teams are divided into the National League (NL) and American League (AL), each with three divisions: East, West, and Central. The MLB champion is determined by playoffs that culminate in the World Series.

### Two paragraph Blockquote
{:.no-toc}

> A baseball game is played between two teams,
> each usually composed of nine players, that take turns playing offense (batting and baserunning)
> and defense (pitching and fielding).
>
> The game is played on a field whose primary boundaries, the foul lines,
> extend forward from home plate at 45-degree angles.
> The 90-degree area within the foul lines is referred to as fair territory;
> the 270-degree area outside them is foul territory.

### Nested Blockquote
{:.no-toc}

> The number of players on a baseball roster, or squad, varies by league and by the level of organized play. A Major League Baseball (MLB) team has a roster of 25 players with specific roles. A typical roster features the following players:
>
> > Eight position players: the catcher, four infielders, and three outfielders—all of whom play on a regular basis.
>
> Most baseball leagues worldwide have the DH rule.

### Blockquote w/ markdown
{:.no-toc}

> ### Baseball Statistics
> {:.no-toc}
> 1. __At Bats:__ Plate appearances, excluding walks and hit by pitches.
> 2. __Hits:__ Number of times a base is reached safely.
> 3. __Runs:__ Number of times runners reach home safely.
> 4. __RBIs:__ Number of runners who scored due to a batter's action.
> 5. __Home Runs:__ Hits where the batter touches all four bases safely.
> 6. __Batting Average:__ Hits divided by at bats.

{% include components/arrow.html link="#howdy" %}

---

## Inline Text

- Just plain text
- **Bold text**
- *Italicize text*
- <abbr title="Abbreviation">Abbr (abbreviation)</abbr>
- <cite>Citation</cite>
- <del>Deleted</del>
- <ins>Underlined</ins>
- Superscript <sup>text</sup>
- Subscript <sub>text</sub>
- Inline code `SELECT * FROM players;`

{% include components/arrow.html link="#howdy" %}

---

## Lists

### Unordered
{:.no-toc}

* Arlington Stadium
* Rangers Ballpark in Arlington
* Ebbets Field

* Boston Red Stockings
  * Boston Red Caps
    * Boston Beaneaters
      * Boston Red Sox

### Ordered
{:.no-toc}

1. Babe Ruth
2. Willie Mays
3. Dale Murphy
4. Mookie Wilson

{% include components/arrow.html link="#howdy" %}

---

## Tables

### Basic
{:.no-toc}

| Player                                                                                                   | BA   | HR  |
|----------------------------------------------------------------------------------------------------------|------|-----|
| <a href="https://www.baseball-reference.com/players/a/aaronha01.shtml" target="_blank">Hank Aaron</a>    | .305 | 755 |
| <a href="https://www.baseball-reference.com/players/r/ruthba01.shtml" target="_blank">Babe Ruth</a>      | .342 | 714 |
| <a href="https://www.baseball-reference.com/players/w/wilsomo01.shtml" target="_blank">Mookie Wilson</a> | .274 | 67  |

### Formatted content
{:.no-toc}

| Command      | Description                                        |
|--------------|----------------------------------------------------|
| `git rm`     | <del>Remove</del> a file from the index            |
| `git status` | List all *new or modified* files                   |
| `git diff`   | Show file differences that **haven't been** staged |

### Cell alignment
{:.no-toc}

| Left-aligned | Center-aligned | Right-aligned |
|:-------------|:--------------:|--------------:|
| `git status` |  `git status`  |  `git status` |
| `git diff`   |   `git diff`   |    `git diff` |

{% include components/arrow.html link="#howdy" %}

---

## Markdown Images

> Images added via markdown receive styling from the `<img>` element, they're not styled with `yolo` classes.

{% include components/code.html label="Markdown images" %}
{% raw %}
```markdown
![Moonie Moonpie](assets/images/moonpie.png "Sweet Moonpie")
![BIG yawn Bucky](assets/images/bucky.png "Sleepy Bucky")
```
{% endraw %}

![Moonie Moonpie](assets/images/moonpie.png "Sweet Moonpie")

![BIG yawn Bucky](assets/images/bucky.png "Sleepy Bucky")

{% include components/arrow.html link="#howdy" %}

---

## Styled Images

You can use yolo Styled Images in addition to markdown images if you're looking for a little eye-candy. Yolo includes support for common aspect ratios, an [image-grid](#image-grid) and [image-lightbox](#image-lightbox).

> __Tip:__ Click an image to enlarge.

---

### Thumbnail Images
{:.no-toc}

Thumbnails are 128px x 128px and use the `thumbnail` class.

{%
include image/image.html
classes="thumbnail"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/big-face-bucky.png"
%}

{% include components/arrow.html link="#howdy" %}

---

### Square Images
{:.no-toc}

Square images can be added with the following classes: `is-16`, `is-24`, `is-32`, `is-48`, `is-64`, `is-96`, `is-128`,
`is-192`, `is-256`, `is-384`, `is-448`, `is-512`, `is-640`.

{%
include image/image.html
classes="image is-256"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/drive-in.png"
%}

{% include components/arrow.html link="#howdy" %}

---

### Circle Images
{:.no-toc}

Circle images can be added with the following classes: `is-circle-16`, `is-circle-24`, `is-circle-32`,
`is-circle-48`, `is-circle-64`, `is-circle-96`, `is-circle-128`, `is-circle-192`, `is-circle-256`, `is-circle-384`,
`is-circle-448`, `is-circle-512`, `is-circle-640`.

{%
include image/image.html
classes="is-circle-256"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/big-face-bucky.png"
%}

{% include components/arrow.html link="#howdy" %}

---

### 4-by-3 Images
{:.no-toc}

4 by 3 aspect ratio images can be added with the following classes: `is-100-by-75`, `is-120-by-90`, `is-128-by-96`,
`is-160-by-120`, `is-200-by-150`, `is-240-by-180`, `is-256-by-192`, `is-320-by-240`, `is-400-by-300`,
`is-480-by-360`, `is-512-by-384`, `is-640-by-480`.

{%
include image/image.html
classes="image is-256-by-192"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}

{% include components/arrow.html link="#howdy" %}

---

### 3-by-4 Images
{:.no-toc}

3 by 4 aspect ratio images can be added with the following classes: `is-75-by-100`, `is-90-by-120`, `is-96-by-128`,
`is-120-by-160`, `is-150-by-200`, `is-180-by-240`, `is-192-by-256`, `is-240-by-320`, `is-300-by-400`,
`is-360-by-480`, `is-384-by-512`, `is-480-by-640`.

{%
include image/image.html
classes="image is-240-by-320"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}

{% include components/arrow.html link="#howdy" %}

---

### 16-by-9 Images
{:.no-toc}

16 by 9 aspect ratio images can be added with the following classes: `is-112-by-63`, `is-128-by-72`, `is-144-by-81`,
`is-160-by-90`, `is-192-by-108`, `is-224-by-126`, `is-256-by-144`, `is-320-by-180`, `is-400-by-225`, `is-480-by-270`,
`is-512-by-288`, `is-640-by-360`.

{%
include image/image.html
classes="image is-256-by-144"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}

{% include components/arrow.html link="#howdy" %}

---

### 9-by-16 Images
{:.no-toc}

9 by 16 aspect ratio images can be added with the following classes: `is-63-by-112`, `is-72-by-128`, `is-81-by-144`,
`is-90-by-160`, `is-108-by-192`, `is-126-by-224`, `is-144-by-256`, `is-180-by-320`, `is-225-by-400`, `is-270-by-480`,
`is-288-by-512`, `is-360-by-640`.

{%
include image/image.html
classes="image is-225-by-400"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}

{% include components/arrow.html link="#howdy" %}

---

## Image Grid

The Image Grid is similar to the [Lightbox](#image-lightbox), except it shows images inline, instead of in a modal.

> __Tip:__ Click an image to enlarge, click again to minimize.

* Add image data into `_data/ig-images.yml`.
* Include `image/grid.html` on your page.

### Default data file
{:.no-toc}

The `_data/ig-images.yml` file is the default data file, just replace with your data to display images.

{% include components/code.html label="Images from: _data/ig-images.yml" %}
{% raw %}
```html
{% include "image/grid.html" %}
```
{% endraw %}

{% include image/grid.html %}

### Custom data file
{:.no-toc}

A custom data file can be added to create an Image Grid.

* Create a new file in `_data/` and prefix name with `ig-`.
* Use the data file name (w/o `.yml` ext) as the value to `ig-data`.
* Customize the number of columns by setting `ig-columns`.

{% include components/code.html label="Images from: _data/ig-pets.yml" %}
{% raw %}
```html
{% include image/grid.html ig-data="ig-pets" ig-columns="2" %}
```
{% endraw %}

{% include image/grid.html ig-data="ig-pets" ig-columns="2" %}

{% include components/arrow.html link="#howdy" %}

---

## Image Lightbox

Yolo includes a Lightbox to showcase pics.

> __Tip:__ Click an image to open Lightbox, click left or right, key `<` or `>` to move.

* Add image data into `_data/lb-images.yml`.
* Include `image/lightbox.html` on your page.

### Default data file
{:.no-toc}

The `_data/lb-images.yml` file is the default Lightbox data file, just replace with your data to display images.

{% include components/code.html label="Images from: _data/lb-images.yml" %}
{% raw %}
```html
{% include image/lightbox.html %}
```
{% endraw %}

{% include image/lightbox.html %}

### Custom data file
{:.no-toc}

A custom data file can be added to create a Lightbox.

* Create a new file in `_data` and prefix name with `lb-`.
* Use the data file name (w/o `.yml` ext) as the value to `lb-data`.

{% include components/code.html label="Images from: _data/lb-marfa.yml" %}
{% raw %}
```html
{% include image/lightbox.html lb-data="lb-marfa" %}
```
{% endraw %}

{% include image/lightbox.html lb-data="lb-marfa" %}

{% include components/arrow.html link="#howdy" %}

---

## Videos

{% include components/video.html %}

{% include components/arrow.html link="#howdy" %}

---

## Prezos

Yolo has basic support for embedding Google Slides.

* Enter prezo data into `_data/prezos.yml`
* Include `prezo.html` on your page.
* Set `title` value to match prezo in `_data/prezos.yml`.
* By default, prezos are displayed with a `is-16-by-9` aspect ratio.
* Optionally set `aspect-ratio` to `is-16-by-9`, `is-4-by-3`, or `is-1-by-1`.

#### Sample 1
{:.no-toc}

{% include components/code.html label="16-by-9 aspect ratio (default)" %}
{% raw %}
```html
{% include components/prezo.html title="blinged-macmini" %}
```
{% endraw %}

> Aspect ratio `is-16-by-9`.

{% include components/prezo.html title="blinged-macmini" %}

#### Sample 2
{:.no-toc}

{% include components/code.html label="4-by-3 aspect ratio" %}
{% raw %}
```html
{% include components/prezo.html title="one-awesome-prezo" aspect-ratio="is-4-by-3" %}
```
{% endraw %}

> Aspect ratio `is-4-by-3`.

{% include components/prezo.html title="one-awesome-prezo" aspect-ratio="is-4-by-3" %}

#### Sample 3
{:.no-toc}

{% include components/code.html label="1-by-1 aspect ratio" %}
{% raw %}
```html
{% include components/prezo.html title="yolo-on" aspect-ratio="is-1-by-1" %}
```
{% endraw %}

> Aspect ratio `is-1-by-1`.

{% include components/prezo.html title="yolo-on" aspect-ratio="is-1-by-1" %}

{% include components/arrow.html link="#howdy" %}

---

## Custom CSS

You can insert custom CSS styling by adding the names of your `.css` files to the `ext_css` front-matter variable.

{% include components/code.html label="Front Matter for custom CSS" %}
```yaml
ext_css:
  - custom # CSS filename in /assets/ext/css/ without .css ext
```

This adds `<link>` elements into `<head>`, __after__ `main.css`.

```html
<!-- Default site stylesheet -->
<link rel="stylesheet" href="/assets/css/main.css">
<!-- Custom stylesheets added by `ext_css` front-matter -->
<link rel="stylesheet" href="/assets/ext/css/custom.css">
```

> The `custom.css` file styles a flexbox to look like a Rubik cube.

<div class="rubik-cube-row">
    <div class="flex-item red"></div>
    <div class="flex-item yellow"></div>
    <div class="flex-item green"></div>
</div>
<div class="rubik-cube-row">
    <div class="flex-item blue"></div>
    <div class="flex-item orange"></div>
    <div class="flex-item yellow"></div>
</div>
<div class="rubik-cube-row">
    <div class="flex-item yellow"></div>
    <div class="flex-item red"></div>
    <div class="flex-item blue"></div>
</div>

{% include components/arrow.html link="#howdy" %}

---

## Custom JavaScript

You can add custom JavaScript to a Yolo page by adding front matter as shown below.

{% include components/code.html label="Front Matter for custom JavaScript" %}
```yaml
ext_js:
  - custom # JavaScript filename in /assets/ext/js/ without .js ext
```

This adds the following `<script>` tag before the closing `</body>` tag.

```html
<body>
    <!-- Your post content here -->
    <script src="/assets/ext/js/custom.js"></script>
</body>
```

The `custom.js` includes functions to make requests for [`site.json`](/site.json) (_located at the site root_) and then displays the response.

* The first function uses [XMLHttpRequest](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest).
* The second function uses [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API).

### XMLHttpRequest sample
{:.no-toc}

<button id="site-button-ajax" type="button">
    Site Info (AJAX)
</button>

### Fetch API sample
{:.no-toc}

<button id="site-button-fetch" type="button">
    Site Info (Fetch)
</button>

{% include components/arrow.html link="#howdy" %}

---

## Containers

This section "contains" information on building and running your single page Yolo site as a container.

> The project `Makefile` includes targets for building a container with [podman](https://podman.io/).

### Tools
{:.no-toc}

* [Podman](https://podman.io/)
* Make (_optional but recommended_)

<ins>Two</ins> container images are built using the Makefile.

* The <ins>first</ins> is `yoloc` which is a "builder" image, to "build" your site.
* The <ins>second</ins> is `yolo`, to "run" your site.

### yoloc
{:.no-toc}

Yoloc is a "builder" image based on [ubi8-minimal](https://developers.redhat.com/products/rhel/ubi), with the following packages added:

* gcc
* gcc-c++
* make
* ruby
* ruby-devel
* jekyll

> Yoloc isn't a runtime image, meaning it doesn't run a server process, it's a build time image, with the tooling needed to run `jekyll build`. The output `_site` will be passed to the `yolo` container, where it's served by [apache httpd](https://httpd.apache.org/).

### yolo
{:.no-toc}

The Yolo image is a runtime image based on [ubi8-minimal](https://developers.redhat.com/products/rhel/ubi), with [apache httpd](https://httpd.apache.org/) installed. Your yolo `_site` is configured in `/var/www/html` where it's served by apache on port `9696`.

### Building and running
{:.no-toc}

{% include components/code.html label="Podman build and run" %}
```bash
# First build yoloc
podman build -f ./src/yoloc.Containerfile -t yoloc:latest ./src

# Then build yolo
podman build -f Containerfile -t yolo:latest .

# Now run and access on http://localhost:9696
podman run --name yolo -d -p 9696:9696 yolo:latest
```

The `Makefile` automates the build and run process, with `make yolo-pod`, which:

* Creates the `yoloc` image.
* Uses `yoloc` to build your `_site`.
* Creates the `yolo` image to run your site.
* Starts a yolo container from the `yolo` image, on [http://localhost:9696](http://localhost:9696).

{% include components/code.html label="Makefile build and run" %}
```bash
# Build and run with make
make yolo-pod
```

{% include components/arrow.html link="#howdy" %}

---

## License

```text
MIT License (MIT)

Copyright (c) 2023 Corbs

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

{% include components/arrow.html link="#howdy" %}

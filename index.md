---
layout: default
tags:
- yolo
- single-page
- jekyll
---

Yolo is a single page theme cut from the cloth of "[Solo](http://chibicode.github.io/solo)" which was previously developed and ultimately deprecated by [Shu Uesugi](https://github.com/chibicode).

##### Goals for Yolo

###### 1. Keep living the Solo dream

Support one-and-only-one page but treat it like a pet.

###### 2. Keep it simple

No dependencies other than [jekyll](https://jekyllrb.com/).

###### 3. Make it customizable

Bring your own [colors](#colors) and [fonts](#typography).

> The one-and-only "implementation" page is the one you're looking at. It's a sampler of all out-of-the-box elements.


##### [> Kuddos](#thanks)

---

## Usage

You need [jekyll](https://jekyllrb.com/).

{% include code.html info="Get Yolo" %}
```bash
git clone https://github.com/corbtastik/yolo.git
cd yolo
jekyll build
jekyll serve
```

---

## Themes

Yolo doesn't implement an "according to hoyle" Jekyll theme, but the colors, fonts, logo and data can be customized.

> "Theming" for Yolo is accomplished by providing a custom scss file as outlined below.

* Copy one of the themes in `_sass/yolo/themes` to a new scss file.
* Provide color values for each variable.
* Enable by setting `site.style` in `_config.yml`.

---

## Yolo Elements

* [Colors](#colors)
* [Typography](#typography)
* [Flexbox](#flexbox)
* [Headers](#headers)
* [Paragraph Text](#paragraph-text)
* [Blockquotes](#blockquotes)
* [Inline Text](#inline-text)
* [Code](#code)
* [Lists](#lists)
* [Tables](#tables)
* [Markdown Images](#markdown-images)
* [Thumbnail Images](#thumbnail-images)
* [Square Images](#square-images)
* [Circle Images](#circle-images)
* [4-by-3 Aspect Images](#4-by-3-aspect-images)
* [3-by-4 Aspect Images](#3-by-4-aspect-images)
* [16-by-9 Aspect Images](#16-by-9-aspect-images)
* [9-by-16 Aspect Images](#9-by-16-aspect-images)
* [Image Lightbox](#image-lightbox)
* [Videos](#videos)
* [Prezos](#prezos)

---

### Colors

Yolo's colors can be customized by adding a new theme scss file and setting the `site.style` value in `_config.yml`.

{% include colors.html %}

[↑↑↑](#){: .back-to-top}

---

### Typography

Yolo's typography implementation is based on [Bulma's Typography](https://bulma.io/documentation/helpers/typography-helpers/).

{% include typography.html %}

[↑↑↑](#){: .back-to-top}

---

### Flexbox

Yolo's flexbox implementation is based on [Bulma's "columns" interface](https://bulma.io/documentation/columns/).

Flexbox is used to layout [lightbox images](#image-lightbox) and included to support rich single page layouts. Knock 
on wood, in the not too distant future I hope to add several layout templates.

{% include code.html info="Flexbox template" %}
{% raw %}
```html
{% include flexbox.html columns="1" %}
{% include flexbox.html columns="2" %}
{% include flexbox.html columns="3" %}
{% include flexbox.html columns="4" %}
{% include flexbox.html columns="5" %}
{% include flexbox.html columns="6" %}
{% include flexbox.html columns="7" %}
{% include flexbox.html columns="8" %}
```
{% endraw %}

{% include flexbox.html columns="1" %}
{% include flexbox.html columns="2" %}
{% include flexbox.html columns="3" %}
{% include flexbox.html columns="4" %}
{% include flexbox.html columns="5" %}
{% include flexbox.html columns="6" %}
{% include flexbox.html columns="7" %}
{% include flexbox.html columns="8" %}

[↑↑↑](#){: .back-to-top}

---

### Headers

H1 is reserved for the site header and not shown here.

## H2 Heading

### H3 Heading

#### H4 Heading

##### H5 Heading

###### H6 Heading

[↑↑↑](#){: .back-to-top}

---

### Paragraph text

[Baseball](https://en.wikipedia.org/wiki/Baseball) is a bat-and-ball sport played between two teams of nine players each, taking turns batting and fielding. The game is in play when a player on the fielding team, called the pitcher, throws a ball that a player on the batting team tries to hit with a bat. The objective of the offensive team (batting team) is to hit the ball into the field of play, away from the other team's players, allowing its players to run the bases, having them advance counter-clockwise around four bases to score what are called "runs". - copied from [Wikipedia](https://en.wikipedia.org/wiki/Baseball).

[↑↑↑](#){: .back-to-top}

---

### Blockquotes

#### Single Blockquote

> In the United States and Canada, professional Major League Baseball (MLB) teams are divided into the National League (NL) and American League (AL), each with three divisions: East, West, and Central. The MLB champion is determined by playoffs that culminate in the World Series.

#### Two paragraph Blockquote

> A baseball game is played between two teams,
> each usually composed of nine players, that take turns playing offense (batting and baserunning)
> and defense (pitching and fielding).
>
> The game is played on a field whose primary boundaries, the foul lines,
> extend forward from home plate at 45-degree angles.
> The 90-degree area within the foul lines is referred to as fair territory;
> the 270-degree area outside them is foul territory.

#### Nested Blockquote

> The number of players on a baseball roster, or squad, varies by league and by the level of organized play. A Major League Baseball (MLB) team has a roster of 25 players with specific roles. A typical roster features the following players:
>
> > Eight position players: the catcher, four infielders, and three outfielders—all of whom play on a regular basis.
>
> Most baseball leagues worldwide have the DH rule.

#### Blockquote w/ markdown

> #### Baseball Statistics
>
> 1. __At Bats:__ Plate appearances, excluding walks and hit by pitches.
> 2. __Hits:__ Number of times a base is reached safely.
> 3. __Runs:__ Number of times runners reach home safely.
> 4. __RBIs:__ Number of runners who scored due to a batter's action.
> 5. __Home Runs:__ Hits where the batter touches all four bases safely.
> 6. __Batting Average:__ Hits divided by at bats.

[↑↑↑](#){: .back-to-top}

---

### Inline Text

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

[↑↑↑](#){: .back-to-top}

---

### Code

> __Tip:__ Click header to copy a snippet.

{% include code.html info="Bash script" %}
```bash
#!/bin/bash
while true; do
    read -p "Do you wish to continue (yes or no)? " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
```

{% include code.html info="Spring Boot Application" %}
```java
package io.todos;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class WebUI {
    public static void main(String[] args) {
      SpringApplication.run(WebUI.class, args);
    }
}
```

{% include code.html info="MongoDB query" %}
```javascript
db.orders.find(
   { price: { $gt: 5000, $lte: 10000 }, cust_id: "mickey@mouse.com" }
)
```

{% include code.html info="SQL example" %}
```sql
SELECT *
FROM orders
WHERE cust_id = "mickey@mouse.com"
AND   price > 5000
AND   price <= 10000
```

[↑↑↑](#){: .back-to-top}

---

### Lists

{% include lists.html %}

#### Unordered

* Arlington Stadium
* Rangers Ballpark in Arlington
* Ebbets Field
* Shea Stadium

* Boston Red Stockings
    * Boston Red Caps
        * Boston Beaneaters
            * Boston Red Sox

#### Ordered

1. Babe Ruth
2. Willie Mays
3. Dale Murphy
4. Mookie Wilson

[↑↑↑](#){: .back-to-top}

---

### Tables

#### Basic

> __See:__ [Github markdown tables](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/organizing-information-with-tables)

| Player        | BA            | HR           |
| ------------- | ------------- | ------------ |
| <a href="https://www.baseball-reference.com/players/a/aaronha01.shtml" target="_blank">Hank Aaron</a> | .305 | 755 |
| <a href="https://www.baseball-reference.com/players/r/ruthba01.shtml" target="_blank">Babe Ruth</a> | .342 | 714 |
| <a href="https://www.baseball-reference.com/players/w/wilsomo01.shtml" target="_blank">Mookie Wilson</a> | .274 | 67 |

#### Formatted content

| Command | Description |
| --- | --- |
| `git rm` | <del>Remove</del> a file from the index |
| `git status` | List all *new or modified* files |
| `git diff` | Show file differences that **haven't been** staged |

#### Cell alignment

| Left-aligned | Center-aligned | Right-aligned |
| :---         |     :---:      |          ---: |
| `git status` | `git status`   | `git status`  |
| `git diff`   | `git diff`     | `git diff`    |

[↑↑↑](#){: .back-to-top}

---

### Markdown Images

[Kramdown](https://github.com/gettalong/kramdown) is the default markdown converter for [Jekyll](https://jekyllrb.com/) and supports adding images via markdown.

> Images added via markdown receive styling from the `<img>` element, they're not styled with `yolo` scss.  

{% include code.html info="Markdown images" %}
{% raw %}
```markdown
![Moonie Moonpie]({{ site.images }}/site/moonpie.png "Sweet Moonpie")
![BIG yawn Bucky]({{ site.images }}/site/bucky.png "Sleepy Bucky")
```
{% endraw %}

![Moonie Moonpie]({{ site.images }}/site/moonpie.png "Sweet Moonpie")

![BIG yawn Bucky]({{ site.images }}/site/bucky.png "Sleepy Bucky")

[↑↑↑](#){: .back-to-top}

---

### Thumbnail Images

Thumbnails are 128px x 128px and use the `thumbnail` class.

{% include code.html info="Thumbnail images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="thumbnail"
  src="yolo/big-face-bucky.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
  include image/image.html
  classes="thumbnail"
  src="yolo/big-face-bucky.png"
%}

[↑↑↑](#){: .back-to-top}

---

### Square Images

Square images can be added with the following classes: `is-16`, `is-24`, `is-32`, `is-48`, `is-64`, `is-96`, `is-128`,
`is-192`, `is-256`, `is-384`, `is-448`, `is-512`, `is-640`.

{% include code.html info="Square images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="image is-256"
  src="yolo/drive-in.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
  include image/image.html
  classes="image is-256"
  src="yolo/drive-in.png"
%}

[↑↑↑](#){: .back-to-top}

---

### Circle Images

Circle images can be added with the following classes: `is-circle-16`, `is-circle-24`, `is-circle-32`,
`is-circle-48`, `is-circle-64`, `is-circle-96`, `is-circle-128`, `is-circle-192`, `is-circle-256`, `is-circle-384`,
`is-circle-448`, `is-circle-512`, `is-circle-640`.

{% include code.html info="Circle images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="is-circle-256"
  src="yolo/big-face-bucky.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
  include image/image.html
  classes="is-circle-256"
  src="yolo/big-face-bucky.png"
%}

[↑↑↑](#){: .back-to-top}

---

### 4-by-3 Aspect Images

4 by 3 aspect ratio images can be added with the following classes: `is-100-by-75`, `is-120-by-90`, `is-128-by-96`,
`is-160-by-120`, `is-200-by-150`, `is-240-by-180`, `is-256-by-192`, `is-320-by-240`, `is-400-by-300`,
`is-480-by-360`, `is-512-by-384`, `is-640-by-480`.

{% include code.html info="4-by-3 images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="image is-256-by-192"
  src="yolo/bluebonnet.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
  include image/image.html
  classes="image is-256-by-192"
  src="yolo/bluebonnet.png"
%}

[↑↑↑](#){: .back-to-top}

---

### 3-by-4 Aspect Images

3 by 4 aspect ratio images can be added with the following classes: `is-75-by-100`, `is-90-by-120`, `is-96-by-128`,
`is-120-by-160`, `is-150-by-200`, `is-180-by-240`, `is-192-by-256`, `is-240-by-320`, `is-300-by-400`,
`is-360-by-480`, `is-384-by-512`, `is-480-by-640`.

{% include code.html info="3-by-4 images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="image is-240-by-320"
  src="yolo/bluebonnet.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
  include image/image.html
  classes="image is-240-by-320"
  src="yolo/bluebonnet.png"
%}

[↑↑↑](#){: .back-to-top}

---

### 16-by-9 Aspect Images

16 by 9 aspect ratio images can be added with the following classes: `is-112-by-63`, `is-128-by-72`, `is-144-by-81`,
`is-160-by-90`, `is-192-by-108`, `is-224-by-126`, `is-256-by-144`, `is-320-by-180`, `is-400-by-225`, `is-480-by-270`,
`is-512-by-288`, `is-640-by-360`.

{% include code.html info="16-by-9 images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="image is-256-by-144"
  src="yolo/bluebonnet.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
  include image/image.html
  classes="image is-256-by-144"
  src="yolo/bluebonnet.png"
%}

[↑↑↑](#){: .back-to-top}

---

### 9-by-16 Aspect Images

9 by 16 aspect ratio images can be added with the following classes: `is-63-by-112`, `is-72-by-128`, `is-81-by-144`,
`is-90-by-160`, `is-108-by-192`, `is-126-by-224`, `is-144-by-256`, `is-180-by-320`, `is-225-by-400`, `is-270-by-480`,
`is-288-by-512`, `is-360-by-640`.

{% include code.html info="9-by-16 images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="image is-225-by-400"
  src="yolo/bluebonnet.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
  include image/image.html
  classes="image is-225-by-400"
  src="yolo/bluebonnet.png"
%}

[↑↑↑](#){: .back-to-top}

---

### Image Lightbox

Yolo includes a lightbox to showcase pics.

__Summary:__

* 4 column flexbox to display images.
* Click an image to open the lightbox.
* Click left or right, key `<` or `>` to move.

__Configuration:__

* View the sample lightbox data file: `_data/lb-images.yml`.
* Add image data into `_data/lb-images.yml`.
* Include `image/lightbox.html` on your page.

#### Default data file

The `_data/lb-images.yml` file is the default lightbox data file, just replace with your data to display images.

{% include code.html info="Images from: _data/lb-images.yml" %}
{% raw %}
```html
{% include image/lightbox.html %}
```
{% endraw %}

{% include image/lightbox.html %}

#### Custom data file

A custom data file can be added to render a lightbox.

* Create a new file in `_data` and prefix name with `lb-`.
* Use the data file name (w/o `.yml` ext) as the value to `lb-data`.

{% include code.html info="Images from: _data/lb-marfa.yml" %}
{% raw %}
```html
{% include image/lightbox.html lb-data="lb-marfa" %}
```
{% endraw %}

{% include image/lightbox.html lb-data="lb-marfa" %}

[↑↑↑](#){: .back-to-top}

---

### Videos

{% include video.html %}

[↑↑↑](#){: .back-to-top}

---

### Prezos

Yolo has basic support for embedding Google Slides.

* Enter prezo data into `_data/prezos.yml`
* Include `prezo.html` on your page.
* Set `title` value to match prezo in `_data/prezos.yml`.
* By default, prezos are displayed with a `is-16-by-9` aspect ratio.
* Optionally set `aspect-ratio` to `is-16-by-9`, `is-4-by-3`, or `is-1-by-1`.

#### Sample 1

{% include code.html info="16-by-9 aspect ratio (default)" %}
{% raw %}
```html
{% include prezo.html title="blinged-macmini" %}
```
{% endraw %}

> Aspect ratio `is-16-by-9`.

{% include prezo.html title="blinged-macmini" %}

#### Sample 2

{% include code.html info="4-by-3 aspect ratio" %}
{% raw %}
```html
{% include prezo.html title="one-awesome-prezo" aspect-ratio="is-4-by-3" %}
```
{% endraw %}

> Aspect ratio `is-4-by-3`.

{% include prezo.html title="one-awesome-prezo" aspect-ratio="is-4-by-3" %}

#### Sample 3

{% include code.html info="1-by-1 aspect ratio" %}
{% raw %}
```html
{% include prezo.html title="yolo-on" aspect-ratio="is-1-by-1" %}
```
{% endraw %}

> Aspect ratio `is-1-by-1`.

{% include prezo.html title="yolo-on" aspect-ratio="is-1-by-1" %}

[↑↑↑](#){: .back-to-top}

---

## Thanks

I'm a developer by trade with roots in C and Java. I once read something like - _"write code every day"_ and although I haven't, I like to try. I enjoy frontend development but consider myself a hack. I get by, but get by with a little help from my friends.

> Many thanks for these resources and the folks behind them.

### [w3schools](https://www.w3schools.com/)

When I want an unvarnished take on HTML, CSS, and Javascript I go to [w3schools](https://www.w3schools.com/). That and every time I google for frontend related stuff [w3schools](https://www.w3schools.com/) comes up. Great reference material, some of which guided the [Yolo Lightbox](#image-lightbox) implementation.

> Sanks [w3schools](https://www.w3schools.com/) people.

### [Solo](http://chibicode.github.io/solo/)

Years ago I googled _"minimal jekyll theme"_, which led me to [Solo](http://chibicode.github.io/solo/). It was exactly what I was looking for, simple to get started and customize. Not to mention there's a quirky beauty in its look. Over the years I've used Solo for single page "technical" docs. It's the motivation and starting point for Yolo.

> Well done [Shu Uesugi](https://github.com/chibicode), sanks amigo.

### [Bulma](https://bulma.io/)

_"The modern CSS framework that just works"_, true dat. Bulma is not included as a library in Yolo but contains slightly modified scss from select areas, namely flexbox, typography and image styling. For my tastes Bulma is the best css framework, they be awesome yo.

> Sanks [Bulma](https://bulma.io/) people.

[↑↑↑](#){: .back-to-top}

---

## License

```text
MIT License (MIT)

Copyright (c) 2022 Corbs

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
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

[↑↑↑](#){: .back-to-top}

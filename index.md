---
layout: default
---

Solo the "[og](http://chibicode.github.io/solo)" version was previously developed, maintained and ultimately deprecated by [Shu Uesugi](https://github.com/chibicode).

> [Solo](http://chibicode.github.io/solo) is a Jekyll theme that supports **single-page websites** only, but supports them well. Yes, it's responsive. - _[Shu Uesugi](https://github.com/chibicode)_

The Solo must go on, so I'm gonna continue curating it as time allows.

__Goals for continuing Solo:__

* __Keep living the Solo dream__: Support one and only one page.
* __Keep it simple__: No dependencies other than [jekyll](https://jekyllrb.com/).
* __Make it customizable__: Bring your own colors and fonts.

The one and only one "implementation" page is the one you're looking at.

---

## Usage

* You need [jekyll](https://jekyllrb.com/).

```bash
git clone https://github.com/corbtastik/solo.git
cd solo
jekyll build
jekyll serve
```

---

## Style

The colors, typography and site logo can be styled to your tastes.

* Copy one of the examples in `_sass/solo/themes` to a new scss file.
* Provide color values for each variable.
* Enable by setting `style` in `_config.yml`.

{% include sampler.html %}

---

## Cornucopia of Content

* [Headers](#headers)
* [Paragraph Text](#paragraph-text)
* [Blockquotes](#blockquotes)
* [Inline Text](#inline-text)
* [Code](#code)
* [Lists](#lists)
* [Tables](#tables)
* [Markdown Images](#markdown-images)
* [Thumbnail Images](#thumbnail-images)
* [Figure Images](#thumbnail-figure-images)
* [Image Flexbox](#image-flexbox)
* [Videos](#videos)

---

## Headers

H1 is reserved for the site header and not shown here.

## H2 Heading

### H3 Heading

#### H4 Heading

##### H5 Heading

###### H6 Heading

[↑↑↑](#){: .back-to-top}

---

## Paragraph text

[Baseball](https://en.wikipedia.org/wiki/Baseball) is a bat-and-ball sport played between two teams of nine players each, taking turns batting and fielding. The game is in play when a player on the fielding team, called the pitcher, throws a ball that a player on the batting team tries to hit with a bat. The objective of the offensive team (batting team) is to hit the ball into the field of play, away from the other team's players, allowing its players to run the bases, having them advance counter-clockwise around four bases to score what are called "runs". The objective of the defensive team (referred to as the fielding team) is to prevent batters from becoming runners, and to prevent runners' advance around the bases. A run is scored when a runner legally advances around the bases in order and touches home plate (the place where the player started as a batter). - copied from [Wikipedia](https://en.wikipedia.org/wiki/Baseball).

[↑↑↑](#){: .back-to-top}

---

## Blockquotes

### Single Blockquote

> In the United States and Canada, professional Major League Baseball (MLB) teams are divided into the National League (NL) and American League (AL), each with three divisions: East, West, and Central. The MLB champion is determined by playoffs that culminate in the World Series.

### Two paragraph Blockquote

> A baseball game is played between two teams,
> each usually composed of nine players, that take turns playing offense (batting and baserunning)
> and defense (pitching and fielding). A pair of turns,
> one at bat and one in the field, by each team constitutes an inning.
> 
> The game is played on a field whose primary boundaries, the foul lines,
> extend forward from home plate at 45-degree angles.
> The 90-degree area within the foul lines is referred to as fair territory;
> the 270-degree area outside them is foul territory.

### Nested Blockquote

> The number of players on a baseball roster, or squad, varies by league and by the level of organized play. A Major League Baseball (MLB) team has a roster of 25 players with specific roles. A typical roster features the following players:
>
> > Eight position players: the catcher, four infielders, and three outfielders—all of whom play on a regular basis.
>
> Most baseball leagues worldwide have the DH rule.

[↑↑↑](#){: .back-to-top}

---

## Blockquote w/ markdown

> ### Statistics
>
> 1. __At Bats:__ Plate appearances, excluding walks and hit by pitches.
> 2. __Hits:__ Times a base is reached safely, because of a batted ball.
> 3. __Runs:__ Times circling the bases and reaching home safely.
> 4. __RBIs:__ Number of runners who scored due to a batter's action.
> 5. __Home Runs:__ Hits on which the batter successfully touched all four bases.
> 6. __Batting Average:__ Hits divided by at bats.

[↑↑↑](#){: .back-to-top}

---

## Inline Text

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

## Code

> __Tip:__ Click the snippet header to copy to clipboard.

{% include code.html info="WebUI.java" %}
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

## Lists

### Unordered

* Arlington Stadium
* Rangers Ballpark in Arlington
* Ebbets Field
* Shea Stadium

* Boston Red Stockings
    * Boston Red Caps
        * Boston Beaneaters
            * Boston Red Sox

### Ordered

1. Babe Ruth
2. Willie Mays
3. Dale Murphy
4. Mookie Wilson

[↑↑↑](#){: .back-to-top}

---

## Tables

### Basic

> __See:__ [Github markdown tables](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/organizing-information-with-tables)

| Player        | BA            | HR           |
| ------------- | ------------- | ------------ |
| <a href="https://www.baseball-reference.com/players/a/aaronha01.shtml" target="_blank">Hank Aaron</a> | .305 | 755 |
| <a href="https://www.baseball-reference.com/players/r/ruthba01.shtml" target="_blank">Babe Ruth</a> | .342 | 714 |
| <a href="https://www.baseball-reference.com/players/w/wilsomo01.shtml" target="_blank">Mookie Wilson</a> | .274 | 67 |

### With formatted content

| Command | Description |
| --- | --- |
| `git rm` | <del>Remove</del> a file from the index |
| `git status` | List all *new or modified* files |
| `git diff` | Show file differences that **haven't been** staged |

### With cell alignment

| Left-aligned | Center-aligned | Right-aligned |
| :---         |     :---:      |          ---: |
| `git status` | `git status`   | `git status`  |
| `git diff`   | `git diff`     | `git diff`    |

[↑↑↑](#){: .back-to-top}

---

## Markdown Images

> The samples below demonstrate using [kramdown](https://github.com/gettalong/kramdown) to render images, kramdown is the default markdown converter for Jekyll.

![Moonie Moonpie](assets/images/moonpie.png "Moonpie Aweee")

![BIG yawn Bucky](assets/images/bucky.png "Sleepy Bucky")

[↑↑↑](#){: .back-to-top}

---

## CSS Images

### Square Images 

__16x16__

<img class="image is-16-x-16" src="assets/images/general/drive-in.png">

__24x24__

<img class="image is-24-x-24" src="assets/images/general/drive-in.png">

__32x32__

<img class="image is-32-x-32" src="assets/images/general/drive-in.png">

__48x48__

<img class="image is-48-x-48" src="assets/images/general/drive-in.png">

__64x64__

<img class="image is-64-x-64" src="assets/images/general/drive-in.png">

__96x96__

<img class="image is-96-x-96" src="assets/images/general/drive-in.png">

__128x128__

<img class="image is-128-x-128" src="assets/images/general/drive-in.png">

__192x192__

<img class="image is-192-x-192" src="assets/images/general/drive-in.png">

__256x256__

<img class="image is-256-x-256" src="assets/images/general/drive-in.png">

__384x384__

<img class="image is-384-x-384" src="assets/images/general/drive-in.png">

__448x448__

<img class="image is-448-x-448" src="assets/images/general/drive-in.png">

__512x512__

<img class="image is-512-x-512" src="assets/images/general/drive-in.png">

__640x640__

<img class="image is-640-x-640" src="assets/images/general/drive-in.png">

---

### 4-by-3 Ratio Images

__100-by-75__

<img class="image is-100-by-75" src="assets/images/general/bluebonnet.png">

__120-by-90__

<img class="image is-120-by-90" src="assets/images/general/bluebonnet.png">

__128-by-96__

<img class="image is-128-by-96" src="assets/images/general/bluebonnet.png">

__160-by-120__

<img class="image is-160-by-120" src="assets/images/general/bluebonnet.png">

__200-by-150__

<img class="image is-200-by-150" src="assets/images/general/bluebonnet.png">

__240-by-180__

<img class="image is-240-by-180" src="assets/images/general/bluebonnet.png">

__256-by-192__

<img class="image is-256-by-192" src="assets/images/general/bluebonnet.png">

__320-by-240__

<img class="image is-320-by-240" src="assets/images/general/bluebonnet.png">

__400-by-300__

<img class="image is-400-by-300" src="assets/images/general/bluebonnet.png">

__480-by-360__

<img class="image is-480-by-360" src="assets/images/general/bluebonnet.png">

__512-by-384__

<img class="image is-512-by-384" src="assets/images/general/bluebonnet.png">

__640-by-480__

<img class="image is-640-by-480" src="assets/images/general/bluebonnet.png">

---

### 3-by-4 Ratio Images

__75-by-100__

<img class="image is-75-by-100" src="assets/images/general/bluebonnet.png">

__90-by-120__

<img class="image is-90-by-120" src="assets/images/general/bluebonnet.png">

__96-by-128__

<img class="image is-96-by-128" src="assets/images/general/bluebonnet.png">

__120-by-160__

<img class="image is-120-by-160" src="assets/images/general/bluebonnet.png">

__150-by-200__

<img class="image is-150-by-200" src="assets/images/general/bluebonnet.png">

__180-by-240__

<img class="image is-180-by-240" src="assets/images/general/bluebonnet.png">

__192-by-256__

<img class="image is-192-by-256" src="assets/images/general/bluebonnet.png">

__240-by-320__

<img class="image is-240-by-320" src="assets/images/general/bluebonnet.png">

__300-by-400__

<img class="image is-300-by-400" src="assets/images/general/bluebonnet.png">

__360-by-480__

<img class="image is-360-by-480" src="assets/images/general/bluebonnet.png">

__384-by-512__

<img class="image is-384-by-512" src="assets/images/general/bluebonnet.png">

__480-by-640__

<img class="image is-480-by-640" src="assets/images/general/bluebonnet.png">

### 16-by-9 Ratio Images

__112-by-63__

<img class="image is-112-by-63" src="assets/images/general/bluebonnet.png">

__128-by-72__

<img class="image is-128-by-72" src="assets/images/general/bluebonnet.png">

__144-by-81__

<img class="image is-144-by-81" src="assets/images/general/bluebonnet.png">

__160-by-90__

<img class="image is-160-by-90" src="assets/images/general/bluebonnet.png">

__192-by-108__

<img class="image is-192-by-108" src="assets/images/general/bluebonnet.png">

__224-by-126__

<img class="image is-224-by-126" src="assets/images/general/bluebonnet.png">

__256-by-144__

<img class="image is-256-by-144" src="assets/images/general/bluebonnet.png">

__320-by-180__

<img class="image is-320-by-180" src="assets/images/general/bluebonnet.png">

__400-by-225__

<img class="image is-400-by-225" src="assets/images/general/bluebonnet.png">

__512-by-288__

<img class="image is-512-by-288" src="assets/images/general/bluebonnet.png">

__640-by-360__

<img class="image is-640-by-360" src="assets/images/general/bluebonnet.png">

### 9-by-16 Ratio Images

__63-by-112__

<img class="image is-63-by-112" src="assets/images/general/bluebonnet.png">

__72-by-128__

<img class="image is-72-by-128" src="assets/images/general/bluebonnet.png">

__81-by-144__

<img class="image is-81-by-144" src="assets/images/general/bluebonnet.png">

__90-by-160__

<img class="image is-90-by-160" src="assets/images/general/bluebonnet.png">

__108-by-192__

<img class="image is-108-by-192" src="assets/images/general/bluebonnet.png">

__126-by-224__

<img class="image is-126-by-224" src="assets/images/general/bluebonnet.png">

__144-by-256__

<img class="image is-144-by-256" src="assets/images/general/bluebonnet.png">

__180-by-320__

<img class="image is-180-by-320" src="assets/images/general/bluebonnet.png">

__225-by-400__

<img class="image is-225-by-400" src="assets/images/general/bluebonnet.png">

__270-by-480__

<img class="image is-270-by-480" src="assets/images/general/bluebonnet.png">

__288-by-512__

<img class="image is-288-by-512" src="assets/images/general/bluebonnet.png">

__360-by-640__

<img class="image is-360-by-640" src="assets/images/general/bluebonnet.png">

## Thumbnail Images

{%
  include image/image.html
  classes="is-512-by-288"
  src="assets/images/general/bluebonnet.png"
%}

{%
  include image/image.html
  classes="is-512-by-288"
  src="assets/images/general/bluebonnet.png"
  description="Texas Bluebonnet"
%}

[↑↑↑](#){: .back-to-top}

---

## Circle Images

[↑↑↑](#){: .back-to-top}

---

## Image Flexbox

* Group images in a flexbox with 4 columns, add in multiples of 4.
* Add image data into `_data/images.yml`.
* Include `image/flexbox.html` on your page.
* Click to pop.

{% include image/flexbox.html %}

[↑↑↑](#){: .back-to-top}

---

## Videos

{% include video.html %}

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

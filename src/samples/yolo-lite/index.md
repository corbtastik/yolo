---
layout: default
tags:
- yolo-lite
- single-page
- jekyll
---

Your new yolo "lite" sample page.

## Headers

> H1 is reserved for the site header and not shown here.

## H2 Heading

### H3 Heading

#### H4 Heading

##### H5 Heading

###### H6 Heading

---

## Paragraph text

[Baseball](https://en.wikipedia.org/wiki/Baseball) is a bat-and-ball sport played between two teams of nine players each, taking turns batting and fielding. The game is in play when a player on the fielding team, called the pitcher, throws a ball that a player on the batting team tries to hit with a bat. - copied from [Wikipedia](https://en.wikipedia.org/wiki/Baseball).

---

## Blockquotes

### Single Blockquote

> In the United States and Canada, professional Major League Baseball (MLB) teams are divided into the National League (NL) and American League (AL), each with three divisions: East, West, and Central.

### Two paragraph Blockquote

> A baseball game is played between two teams,
> each usually composed of nine players, that take turns playing offense (batting and baserunning)
> and defense (pitching and fielding).
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

### Blockquote w/ markdown

> #### Baseball Statistics
>
> 1. __At Bats:__ Plate appearances, excluding walks and hit by pitches.
> 2. __Hits:__ Number of times a base is reached safely.
> 3. __Runs:__ Number of times runners reach home safely.
> 4. __RBIs:__ Number of runners who scored due to a batter's action.
> 5. __Home Runs:__ Hits where the batter touches all four bases safely.
> 6. __Batting Average:__ Hits divided by at bats.

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

---

## Code

> __Tip:__ Click header to copy a snippet.

{% include code.html label="Bash script" %}
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

---

## Lists

### Unordered

* Arlington Stadium
* Rangers Ballpark in Arlington
* Ebbets Field

* Boston Red Stockings
    * Boston Red Caps
        * Boston Beaneaters
            * Boston Red Sox

### Ordered

1. Babe Ruth
2. Willie Mays
3. Dale Murphy
4. Mookie Wilson

## Tables

### Basic

> __See:__ [Github markdown tables](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/organizing-information-with-tables)

| Player        | BA            | HR           |
| ------------- | ------------- | ------------ |
| <a href="https://www.baseball-reference.com/players/a/aaronha01.shtml" target="_blank">Hank Aaron</a> | .305 | 755 |
| <a href="https://www.baseball-reference.com/players/r/ruthba01.shtml" target="_blank">Babe Ruth</a> | .342 | 714 |
| <a href="https://www.baseball-reference.com/players/w/wilsomo01.shtml" target="_blank">Mookie Wilson</a> | .274 | 67 |

### Formatted content

| Command | Description |
| --- | --- |
| `git rm` | <del>Remove</del> a file from the index |
| `git status` | List all *new or modified* files |
| `git diff` | Show file differences that **haven't been** staged |

### Cell alignment

| Left-aligned | Center-aligned | Right-aligned |
| :---         |     :---:      |          ---: |
| `git status` | `git status`   | `git status`  |
| `git diff`   | `git diff`     | `git diff`    |

---

## Markdown Images

[Kramdown](https://github.com/gettalong/kramdown) is the default markdown converter for [Jekyll](https://jekyllrb.com/) and supports adding images via markdown.

> Images added via markdown receive styling from the `<img>` element, they're not styled with `yolo` scss.

![Moonie Moonpie]({{ site.images }}/moonpie.png "Sweet Moonpie")

![BIG yawn Bucky]({{ site.images }}/bucky.png "Sleepy Bucky")

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
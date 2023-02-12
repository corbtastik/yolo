---
layout: default
tags:
- yolo
- solo-theme
- jekyll
---

Yolo __solo__ theme sample page with mostly plain markdown elements.

{% include toc.html header="h2" text="Table of Contents" %}

---

## Headers

> H1 is reserved for the site header and not shown here.

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

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Paragraph text

[Baseball](https://en.wikipedia.org/wiki/Baseball) is a bat-and-ball sport played between two teams of nine players each, taking turns batting and fielding. The game is in play when a player on the fielding team, called the pitcher, throws a ball that a player on the batting team tries to hit with a bat. The objective of the offensive team (batting team) is to hit the ball into the field of play, away from the other team's players, allowing its players to run the bases, having them advance counter-clockwise around four bases to score what are called "runs". - copied from [Wikipedia](https://en.wikipedia.org/wiki/Baseball).

[↑↑↑](#table-of-contents){: .back-to-top}

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

> #### Baseball Statistics
> {:.no-toc}
> 1. __At Bats:__ Plate appearances, excluding walks and hit by pitches.
> 2. __Hits:__ Number of times a base is reached safely.
> 3. __Runs:__ Number of times runners reach home safely.
> 4. __RBIs:__ Number of runners who scored due to a batter's action.
> 5. __Home Runs:__ Hits where the batter touches all four bases safely.
> 6. __Batting Average:__ Hits divided by at bats.

[↑↑↑](#table-of-contents){: .back-to-top}

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

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Code

> __Tip:__ Click header to copy a snippet.

{% include code.html label="Java snippet" %}
```java
// Say Howdy
public class Howdy {
    public static void main(String[] args) {
        if(args.length != 1) {
            System.out.println("Usage: Howdy <NAME>");
            System.exit(1);
        }
        System.out.println("Howdy " + args[0] + "!");
    }
}
```

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

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Tables

### Basic
{:.no-toc}

> __See:__ [Github markdown tables](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/organizing-information-with-tables)

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

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Markdown Images

> Images added via markdown receive styling from the `<img>` element, they're not styled with `yolo` classes.

{% include code.html label="Markdown images" %}
{% raw %}
```markdown
![Moonie Moonpie](assets/images/moonpie.png "Sweet Moonpie")
![BIG yawn Bucky](assets/images/bucky.png "Sleepy Bucky")
```
{% endraw %}

![Moonie Moonpie](assets/images/moonpie.png "Sweet Moonpie")

![BIG yawn Bucky](assets/images/bucky.png "Sleepy Bucky")

[↑↑↑](#table-of-contents){: .back-to-top}

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

[↑↑↑](#table-of-contents){: .back-to-top}
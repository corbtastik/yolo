---
layout: default
tags:
- yolo
- single-page
- jekyll
---

Yolo is laser focused on static single page sites, and while anyone can Yolo, it's purposely built for writers,
techies, and picture taking folk.

> _I don't always use single-page sites but when I do, I [yolo](https://github.com/corbtastik/yolo)._

##### Goals for Yolo
{:.no-toc}

###### 1. Live the best single page life.
{:.no-toc}

Pamper single page sites like we pamper our pets.

###### 2. Strive for simplicity.
{:.no-toc}

No dependencies other than [jekyll](https://jekyllrb.com/).

###### 3. Make it customizable
{:.no-toc}

Bring your own [colors](#colors) and [fonts](#typography).

---

{% include toc.html header="h2" text="Table of Contents" %}

[↑↑↑](#){: .back-to-top}

---

## Getting Started

You need [jekyll](https://jekyllrb.com/).

{% include code.html label="Get Yolo" %}
```bash
git clone https://github.com/corbtastik/yolo.git
cd yolo
jekyll build
jekyll serve
```

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Themes

Yolo doesn't implement an "according to hoyle" [gem based theme](https://jekyllrb.com/docs/themes/), but the colors and fonts can be customized as outlined below.

> __Note:__ "Theming" for Yolo is accomplished by providing a custom scss file in `_sass/yolo/themes`. Each theme must specify "light" and "dark" values to support switching between the two modes.

##### 1. Create a new scss file for your theme.
{:.no-toc}

{% include code.html label="Create theme scss" %}
```bash
# Use whatever NAME you like
make theme NAME=domino
```

##### 2. Customize the theme values.
{:.no-toc}

__Color properties:__

| Light/Dark property       | Description                           |
|---------------------------|---------------------------------------|
| `*-primary-color`         | Background color                      |
| `*-secondary-color`       | Foreground color, text, tables        |
| `*-accent-color`          | Header color                          |
| `*-code-background-color` | Background color for code snippets    |
| `*-code-color`            | Text color for inline code & snippets |
| `*-link-color`            | Hyperlink color                       |

__Font family properties:__

> __Note:__ Add font-family in `_data/fonts.yml` to customize what fonts are available.

| Font property      | Description                        |
|--------------------|------------------------------------|
| `family-primary`   | Family for body and most text      |
| `family-secondary` | Family for headers and accent text |
| `family-monospace` | Family for code                    |

__Theme file:__

{% include code.html label="_sass/yolo/themes/_domino.scss" %}
```scss
$light-primary-color: #fff;
$light-secondary-color: #000;
$light-accent-color: #757575;
$light-code-background-color: #424242;
$light-code-color: #757575;
$light-link-color: #2196f3;

$dark-primary-color: #000;
$dark-secondary-color: #fff;
$dark-accent-color: #bdbdbd;
$dark-code-background-color: #424242;
$dark-code-color: #fff;
$dark-link-color: #2196f3;

$family-primary: "Open Sans", sans-serif;
$family-secondary: "Raleway", sans-serif;
$family-monospace: "Inconsolata", monospace;
```

##### 3. Enable by setting `site.style` in `_config.yml`.
{:.no-toc}

{% include code.html label="Jekyll _config.yml" %}
```yaml
# Site customizations
style: domino
```

That's it, run Yolo and adjust colors to your liking.

[↑↑↑](#table-of-contents){: .back-to-top}

---

### Colors

Yolo's colors can be customized as outlined in [Yolo Themes](#themes).

{% include flexbox.html columns="1" fill="primary-color" %}
{% include flexbox.html columns="1" fill="secondary-color" %}
{% include flexbox.html columns="1" fill="accent-color" %}
{% include flexbox.html columns="1" fill="link-color" %}
{% include flexbox.html columns="1" fill="code-background-color" %}
{% include flexbox.html columns="1" fill="code-color" %}
{% include flexbox.html columns="1" fill="sidebar-color" %}

[↑↑↑](#table-of-contents){: .back-to-top}

---

### Typography

Yolo's fonts can be customized as outlined in [Yolo Themes](#themes).

{% include typography.html %}

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Elements

* [Headers](#headers)
* [Paragraph Text](#paragraph-text)
* [Blockquotes](#blockquotes)
* [Inline Text](#inline-text)
* [Code](#code)
* [Lists](#lists)
* [Tables](#tables)
* [Markdown Images](#markdown-images)
* [Videos](#videos)
* [Prezos](#prezos)

[↑↑↑](#table-of-contents){: .back-to-top}

---

### Headers

H1 is reserved for the site header and not shown here.

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

### Paragraph text

[Baseball](https://en.wikipedia.org/wiki/Baseball) is a bat-and-ball sport played between two teams of nine players each, taking turns batting and fielding. The game is in play when a player on the fielding team, called the pitcher, throws a ball that a player on the batting team tries to hit with a bat. The objective of the offensive team (batting team) is to hit the ball into the field of play, away from the other team's players, allowing its players to run the bases, having them advance counter-clockwise around four bases to score what are called "runs". - copied from [Wikipedia](https://en.wikipedia.org/wiki/Baseball).

[↑↑↑](#table-of-contents){: .back-to-top}

---

### Blockquotes

#### Single Blockquote
{:.no-toc}

> In the United States and Canada, professional Major League Baseball (MLB) teams are divided into the National League (NL) and American League (AL), each with three divisions: East, West, and Central. The MLB champion is determined by playoffs that culminate in the World Series.

#### Two paragraph Blockquote
{:.no-toc}

> A baseball game is played between two teams,
> each usually composed of nine players, that take turns playing offense (batting and baserunning)
> and defense (pitching and fielding).
>
> The game is played on a field whose primary boundaries, the foul lines,
> extend forward from home plate at 45-degree angles.
> The 90-degree area within the foul lines is referred to as fair territory;
> the 270-degree area outside them is foul territory.

#### Nested Blockquote
{:.no-toc}

> The number of players on a baseball roster, or squad, varies by league and by the level of organized play. A Major League Baseball (MLB) team has a roster of 25 players with specific roles. A typical roster features the following players:
>
> > Eight position players: the catcher, four infielders, and three outfielders—all of whom play on a regular basis.
>
> Most baseball leagues worldwide have the DH rule.

#### Blockquote w/ markdown
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

[↑↑↑](#table-of-contents){: .back-to-top}

---

### Code

> __Tip:__ Click header to copy a snippet.

{% include code.html label="JSON array" %}
```json
[{
  "id": 1000,
  "first_name": "Sponge",
  "last_name": "Bob",
  "email": "spongebob@krustykrab.com",
  "phone": "555-555-5555",
  "address": "124 Conch Street",
  "city": "Bikini Bottom"
}, {
  "id": 1001,
  "first_name": "Charlie",
  "last_name": "Brown",
  "email": "chuck@peanuts.com",
  "phone": "612-111-7777",
  "address": "1770 James Street",
  "city": "Minneapolis",
  "state": "Minnesota",
  "zipcode": "55403"
}, {
  "id": 3,
  "first_name": "Levon",
  "last_name": "Laurent",
  "email": "llaurent2@etsy.com",
  "phone": "212-535-6056",
  "schools": "Zhejiang Normal University",
  "address": "93 Lyons Court",
  "city": "New York City",
  "state": "New York",
  "zipcode": "10125"
}]
```

{% include code.html label="Bash snippet" %}
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

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="C snippet" %}
```c
#include <stdio.h>
// Say Howdy
int main(int argc, char **argv) {
    if(argc != 2) {
        printf("Usage: Howdy <NAME>");
        return 1;
    }
    printf("Howdy %s!\n", argv[1]);
    return 0;
}
```

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="C++ snippet" %}
```c++
#include <iostream>
using namespace std;

int main(int argc, char** argv) {
    if(argc != 2) {
        cout << "Usage: Howdy <NAME>";
        return 1;
    }
    cout << "Howdy " << argv[1];
    return 0;
}
```

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="Dart snippet" %}
```dart
import 'dart:io';
// Say Howdy
void main(List<String> args) {
    exitCode = 0;
    if(args.length != 1) {
        stdout.writeln("Usage: Howdy <NAME>");
        exitCode = 1;
        return;
    }
    stdout.writeln("Howdy ${args[0]}!");
}
```

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="Go snippet" %}
```go
package main

import (
    "os"
    "fmt"
)

// Say Howdy
func main () {
    if len(os.Args) != 2 {
        fmt.Println("Usage: Howdy <NAME>")
        os.Exit(1)
    }
    fmt.Println("Howdy " + os.Args[1] + "!")
    os.Exit(0)
}
```

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="HTML snippet" %}
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Howdy!</title>
</head>
<body>
    <h1>Howdy from an HTML page!</h1>
</body>
</html>
```

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="JSON snippet" %}
```json
{
  "apiVersion": "v1",
  "kind": "Service",
  "metadata": {
    "name": "minio-server-lb",
    "namespace": "minio",
    "labels": {
      "app/name": "minio"
    }
  },
  "spec": {
    "ports": [{
        "port": 9000,
        "targetPort": 9000,
        "protocol": "TCP"
      }],
    "selector": {
      "app/name": "minio",
      "app/component": "backend"
    },
    "type": "LoadBalancer"
  }
}
```

[↑↑↑](#table-of-contents){: .back-to-top}

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

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="JavaScript snippet" %}
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

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="Kotlin snippet" %}
```kotlin
// Say Howdy
fun main(args: Array<String>): Int {
    if(args.size != 1) {
        println("Usage: Howdy <NAME>")
        return 1
    }
    println("Howdy " + args[0] + "!")
    return 0
}
```

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="Markdown snippet" %}
```markdown
# Markdown

* __Howdy__
* _from_
* <ins>a</ins>
* [Markdown](https://en.wikipedia.org/wiki/Markdown)
* `document`!
```

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="Python snippet" %}
```python
import sys

def sayHowdy(name):
    print("Howdy " + name + "!")

if len(sys.argv) != 2:
    print("Usage: Howdy <NAME>")
    sys.exit(1)

# Say Howdy
sayHowdy(sys.argv[1])
```

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="SCSS snippet" %}
```scss
.light-theme {
  color: $light-secondary-color;
  background-color: $light-primary-color;
  font-family: $family-primary;

  a {
    color: $light-link-color;
  }

  h1, h2, h3, h4, h5, h6 {
    color: $light-accent-color;
    font-family: $family-secondary, sans-serif;
  }
}
```

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="SQL snippet" %}
```sql
-- Select orders for micky
SELECT *
FROM orders
WHERE cust_id = "mickey@mouse.com"
AND   price > 5000
AND   price <= 10000
```

[↑↑↑](#table-of-contents){: .back-to-top}

{% include code.html label="YAML snippet" %}
```yaml
apiVersion: v1
kind: Service
metadata:
  name: minio-server-lb
  namespace: minio
  labels:
    app/name: minio
spec:
  ports:
    - port: 9000
      targetPort: 9000
      protocol: TCP
  selector:
    app/name: minio
    app/component: backend
  type: LoadBalancer
```

[↑↑↑](#table-of-contents){: .back-to-top}

---

### Lists

#### Unordered
{:.no-toc}

* Arlington Stadium
* Rangers Ballpark in Arlington
* Ebbets Field

* Boston Red Stockings
  * Boston Red Caps
    * Boston Beaneaters
      * Boston Red Sox

#### Ordered
{:.no-toc}

1. Babe Ruth
2. Willie Mays
3. Dale Murphy
4. Mookie Wilson

[↑↑↑](#table-of-contents){: .back-to-top}

---

### Tables

#### Basic
{:.no-toc}

> __See:__ [Github markdown tables](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/organizing-information-with-tables)

| Player        | BA            | HR           |
| ------------- | ------------- | ------------ |
| <a href="https://www.baseball-reference.com/players/a/aaronha01.shtml" target="_blank">Hank Aaron</a> | .305 | 755 |
| <a href="https://www.baseball-reference.com/players/r/ruthba01.shtml" target="_blank">Babe Ruth</a> | .342 | 714 |
| <a href="https://www.baseball-reference.com/players/w/wilsomo01.shtml" target="_blank">Mookie Wilson</a> | .274 | 67 |

| Rank | Movie                                                                                                                   |
|:-----|:------------------------------------------------------------------------------------------------------------------------|
| 1    | [Rogue One](https://en.wikipedia.org/wiki/Rogue_One)                                                                    |
| 2    | [Episode V – The Empire Strikes Back](https://en.wikipedia.org/wiki/The_Empire_Strikes_Back)                            |
| 3    | [Episode IV – A New Hope](https://en.wikipedia.org/wiki/Star_Wars_(film))                                               |
| 4    | [Episode VII – The Force Awakens](https://en.wikipedia.org/wiki/Star_Wars:_The_Force_Awakens)                           |
| 5    | [Solo: A Star Wars Story](https://en.wikipedia.org/wiki/Solo:_A_Star_Wars_Story)                                        |
| 6    | [Episode VI – Return of the Jedi](https://en.wikipedia.org/wiki/Return_of_the_Jedi)                                     |
| 7    | [Episode VIII – The Last Jedi](https://en.wikipedia.org/wiki/Star_Wars:_The_Last_Jedi)                                  |
| 8    | [Episode IX – The Rise of Skywalker](https://en.wikipedia.org/wiki/Star_Wars:_The_Rise_of_Skywalker)                    |
| 9    | [Episode III – Revenge of the Sith](https://en.wikipedia.org/wiki/Star_Wars:_Episode_III_%E2%80%93_Revenge_of_the_Sith) |
| 10   | [Episode II – Attack of the Clones](https://en.wikipedia.org/wiki/Star_Wars:_Episode_II_%E2%80%93_Attack_of_the_Clones) |
| 11   | [Episode I – The Phantom Menace](https://en.wikipedia.org/wiki/Star_Wars:_Episode_I_%E2%80%93_The_Phantom_Menace)       |

#### Formatted content
{:.no-toc}

| Command | Description |
| --- | --- |
| `git rm` | <del>Remove</del> a file from the index |
| `git status` | List all *new or modified* files |
| `git diff` | Show file differences that **haven't been** staged |

#### Cell alignment
{:.no-toc}

| Left-aligned | Center-aligned | Right-aligned |
| :---         |     :---:      |          ---: |
| `git status` | `git status`   | `git status`  |
| `git diff`   | `git diff`     | `git diff`    |

[↑↑↑](#table-of-contents){: .back-to-top}

---

### Markdown Images

> Images added via markdown receive styling from the `<img>` element, they're not styled with `yolo` classes.

{% include code.html label="Markdown images" %}
{% raw %}
```markdown
![Moonie Moonpie](assets/images/site/moonpie.png "Sweet Moonpie")
![BIG yawn Bucky](assets/images/site/bucky.png "Sleepy Bucky")
```
{% endraw %}

![Moonie Moonpie](assets/images/site/moonpie.png "Sweet Moonpie")

![BIG yawn Bucky](assets/images/site/bucky.png "Sleepy Bucky")

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Styled Images

You can use yolo Styled Images in addition to markdown images if you're looking for a little eye-candy. Yolo includes support for common aspect ratios, an [image-grid](#image-grid) and [image-lightbox](#image-lightbox).

* [Thumbnail Images](#thumbnail-images)
* [Square Images](#square-images)
* [Circle Images](#circle-images)
* [4-by-3 Images](#4-by-3-images)
* [3-by-4 Images](#3-by-4-images)
* [16-by-9 Images](#16-by-9-images)
* [9-by-16 Images](#9-by-16-images)

---

### Thumbnail Images

Thumbnails are 128px x 128px and use the `thumbnail` class.

{% include code.html label="Thumbnail images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="thumbnail"
  src="https://storage.googleapis.com/corbs-foto/yolo/yolo/big-face-bucky.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
include image/image.html
classes="thumbnail"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/big-face-bucky.png"
%}

[↑↑↑](#table-of-contents){: .back-to-top}

---

### Square Images

Square images can be added with the following classes: `is-16`, `is-24`, `is-32`, `is-48`, `is-64`, `is-96`, `is-128`,
`is-192`, `is-256`, `is-384`, `is-448`, `is-512`, `is-640`.

{% include code.html label="Square images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="image is-256"
  src="https://storage.googleapis.com/corbs-foto/yolo/yolo/drive-in.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
include image/image.html
classes="image is-256"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/drive-in.png"
%}

[↑↑↑](#table-of-contents){: .back-to-top}

---

### Circle Images

Circle images can be added with the following classes: `is-circle-16`, `is-circle-24`, `is-circle-32`,
`is-circle-48`, `is-circle-64`, `is-circle-96`, `is-circle-128`, `is-circle-192`, `is-circle-256`, `is-circle-384`,
`is-circle-448`, `is-circle-512`, `is-circle-640`.

{% include code.html label="Circle images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="is-circle-256"
  src="https://storage.googleapis.com/corbs-foto/yolo/yolo/big-face-bucky.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
include image/image.html
classes="is-circle-256"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/big-face-bucky.png"
%}

[↑↑↑](#table-of-contents){: .back-to-top}

---

### 4-by-3 Images

4 by 3 aspect ratio images can be added with the following classes: `is-100-by-75`, `is-120-by-90`, `is-128-by-96`,
`is-160-by-120`, `is-200-by-150`, `is-240-by-180`, `is-256-by-192`, `is-320-by-240`, `is-400-by-300`,
`is-480-by-360`, `is-512-by-384`, `is-640-by-480`.

{% include code.html label="4-by-3 images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="image is-256-by-192"
  src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
include image/image.html
classes="image is-256-by-192"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}

[↑↑↑](#table-of-contents){: .back-to-top}

---

### 3-by-4 Images

3 by 4 aspect ratio images can be added with the following classes: `is-75-by-100`, `is-90-by-120`, `is-96-by-128`,
`is-120-by-160`, `is-150-by-200`, `is-180-by-240`, `is-192-by-256`, `is-240-by-320`, `is-300-by-400`,
`is-360-by-480`, `is-384-by-512`, `is-480-by-640`.

{% include code.html label="3-by-4 images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="image is-240-by-320"
  src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
include image/image.html
classes="image is-240-by-320"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}

[↑↑↑](#table-of-contents){: .back-to-top}

---

### 16-by-9 Images

16 by 9 aspect ratio images can be added with the following classes: `is-112-by-63`, `is-128-by-72`, `is-144-by-81`,
`is-160-by-90`, `is-192-by-108`, `is-224-by-126`, `is-256-by-144`, `is-320-by-180`, `is-400-by-225`, `is-480-by-270`,
`is-512-by-288`, `is-640-by-360`.

{% include code.html label="16-by-9 images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="image is-256-by-144"
  src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
include image/image.html
classes="image is-256-by-144"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}

[↑↑↑](#table-of-contents){: .back-to-top}

---

### 9-by-16 Images

9 by 16 aspect ratio images can be added with the following classes: `is-63-by-112`, `is-72-by-128`, `is-81-by-144`,
`is-90-by-160`, `is-108-by-192`, `is-126-by-224`, `is-144-by-256`, `is-180-by-320`, `is-225-by-400`, `is-270-by-480`,
`is-288-by-512`, `is-360-by-640`.

{% include code.html label="9-by-16 images" %}
{% raw %}
```html
{%
  include image/image.html
  classes="image is-225-by-400"
  src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}
```
{% endraw %}

> __Tip:__ Click to enlarge.

{%
include image/image.html
classes="image is-225-by-400"
src="https://storage.googleapis.com/corbs-foto/yolo/yolo/bluebonnet.png"
%}

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Image Grid

The Image Grid is similar to the [Lightbox](#image-lightbox), except it shows images inline, instead of in a modal.

> __Tip:__ Click an image to enlarge, click again to minimize.

* Add image data into `_data/ig-images.yml`.
* Include `image/grid.html` on your page.

### Default data file
{:.no-toc}

The `_data/ig-images.yml` file is the default data file, just replace with your data to display images.

{% include code.html label="Images from: _data/ig-images.yml" %}
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

{% include code.html label="Images from: _data/ig-pets.yml" %}
{% raw %}
```html
{% include image/grid.html ig-data="ig-pets" ig-columns="2" %}
```
{% endraw %}

{% include image/grid.html ig-data="ig-pets" ig-columns="2" %}

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Image Lightbox

Yolo includes a Lightbox to showcase pics.

> __Tip:__ Click an image to open Lightbox, click left or right, key `<` or `>` to move.

* Add image data into `_data/lb-images.yml`.
* Include `image/lightbox.html` on your page.

### Default data file
{:.no-toc}

The `_data/lb-images.yml` file is the default Lightbox data file, just replace with your data to display images.

{% include code.html label="Images from: _data/lb-images.yml" %}
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

{% include code.html label="Images from: _data/lb-marfa.yml" %}
{% raw %}
```html
{% include image/lightbox.html lb-data="lb-marfa" %}
```
{% endraw %}

{% include image/lightbox.html lb-data="lb-marfa" %}

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Videos

{% include video.html %}

[↑↑↑](#table-of-contents){: .back-to-top}

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

{% include code.html label="16-by-9 aspect ratio (default)" %}
{% raw %}
```html
{% include prezo.html title="blinged-macmini" %}
```
{% endraw %}

> Aspect ratio `is-16-by-9`.

{% include prezo.html title="blinged-macmini" %}

#### Sample 2
{:.no-toc}

{% include code.html label="4-by-3 aspect ratio" %}
{% raw %}
```html
{% include prezo.html title="one-awesome-prezo" aspect-ratio="is-4-by-3" %}
```
{% endraw %}

> Aspect ratio `is-4-by-3`.

{% include prezo.html title="one-awesome-prezo" aspect-ratio="is-4-by-3" %}

#### Sample 3
{:.no-toc}

{% include code.html label="1-by-1 aspect ratio" %}
{% raw %}
```html
{% include prezo.html title="yolo-on" aspect-ratio="is-1-by-1" %}
```
{% endraw %}

> Aspect ratio `is-1-by-1`.

{% include prezo.html title="yolo-on" aspect-ratio="is-1-by-1" %}

[↑↑↑](#table-of-contents){: .back-to-top}

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

{% include code.html label="Podman build and run" %}
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
* Starts a yolo container from the `yolo` image, on [`http://localhost:9696`](http://localhost:9696).

{% include code.html label="Makefile build and run" %}
```bash
# Build and run with make
make yolo-pod
```

[↑↑↑](#table-of-contents){: .back-to-top}

---

## Thanks

I'm a developer by trade with roots in C and Java. I once read something like - _"write code every day"_ and although I haven't, I like to try. I enjoy frontend development but consider myself a hack. I get by, but get by with a little help from my friends.

> Many thanks for these resources and the folks behind them.

### [w3schools](https://www.w3schools.com/)
{:.no-toc}

When I want an unvarnished take on HTML, CSS, and Javascript I go to [w3schools](https://www.w3schools.com/). That and every time I google for frontend related stuff [w3schools](https://www.w3schools.com/) comes up. Great reference material, some of which guided the [Yolo Lightbox](#image-lightbox) implementation.

> Sanks [w3schools](https://www.w3schools.com/) people.

### [Solo](http://chibicode.github.io/solo/)
{:.no-toc}

Years ago I googled _"minimal jekyll theme"_, which led me to [Solo](http://chibicode.github.io/solo/). It was exactly what I was looking for, simple to get started and customize. Not to mention there's a quirky beauty in its look. Over the years I've used Solo for single page "technical" docs.

Yolo is cut from the cloth of "[Solo](http://chibicode.github.io/solo)" which was previously developed by [Shu Uesugi](https://github.com/chibicode).

> Well done [Shu Uesugi](https://github.com/chibicode), sanks amigo.

### [Bulma](https://bulma.io/)
{:.no-toc}

_"The modern CSS framework that just works"_, true dat. Bulma is not included as a library, but Yolo contains slightly modified scss from select areas, namely flexbox, typography and image styling. For my tastes Bulma is the best css framework, they be awesome yo.

> Sanks [Bulma](https://bulma.io/) people.

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

---
layout: default
links:
- yolo,https://github.com/corbtastik/yolo
- jekyll,https://jekyllrb.com
---

## Code

> __Tip:__ Click header to copy a snippet.

---

## Bash

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

{% include arrow.html link="#code" %}

---

## C

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

{% include arrow.html link="#code" %}

---

## JSON

{% include code.html label="JSON snippet" %}
```json
{
  "site": "yolo-main",
  "config": "_config.yml",
  "index": "index.md",
  "data": [
    "settings.yml",
    "fonts.yml",
    "images.yml"
  ],
  "assets": {
    "images": [
      "error.png",
      "logo.png"
    ]
  },
  "theme": "_yolo.scss"
}
```

{% include arrow.html link="#code" %}

---

## JavaScript

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

{% include arrow.html link="#code" %}

---

## SCSS

{% include code.html label="SCSS snippet" %}
```scss
.light-mode {
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

{% include arrow.html link="#code" %}

---

## YAML

{% include code.html label="YAML snippet" %}
```yaml
# -----------------------------------------------------------------------------
# Yolo site settings. see: _config.yml for jekyll settings
# -----------------------------------------------------------------------------
name: Yolo
version: v1.3
title: Yolo on my friend
description: Loveable single pages
theme:
  name: solo
  syntax: monokai
align: left
sidebar:
  logo: assets/images/logo.png
```

{% include arrow.html link="#code" %}

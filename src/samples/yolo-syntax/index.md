---
layout: default
links:
- yolo,https://github.com/corbtastik/yolo
- jekyll,https://jekyllrb.com
---

## Syntax Highlighting

Yolo uses Jekyll's [default syntax highlighting](https://jekyllrb.com/docs/liquid/tags/#code-snippet-highlighting) capabilities provided by [rouge](https://github.com/rouge-ruby/rouge), and adds the ability to use custom `syntax-theme(s)` for light and dark modes.

The following `syntax-theme(s)` are provided out-of-the-box.

| Syntax Theme                                            | Description                            |
|---------------------------------------------------------|----------------------------------------|
| [dracula](https://corbtastik-yolo-dracula.surge.sh)     | A theme for Transylvanian vampires     |
| [dusk](https://corbtastik-yolo-dusk.surge.sh)           | A sunset lovers theme                  |
| [monokai](https://corbtastik-yolo-monokai.surge.sh)     | The classic theme for focusing         |
| [neon](https://corbtastik-yolo-neon.surge.sh)           | A bright fluorescent dark theme        |
| [newspaper](https://corbtastik-yolo-newspaper.surge.sh) | Read all about this greyscale theme    |
| [reveal](https://corbtastik-yolo-reveal.surge.sh)       | A theme for big reveals                |
| [solo](https://corbtastik-yolo-solo.surge.sh)           | Minimal black and white theme          |
| [sprinkles](https://corbtastik-yolo-sprinkles.surge.sh) | A theme that pairs well with cup cakes |
| [yolo](https://corbtastik-yolo.surge.sh)                | The default theme for Yolo sites       |

### Custom Syntax Theme
{:.no-toc}

1. Creating a custom `syntax-theme` is done by adding a `scss` file into `_sass/yolo/syntax-theme` and setting values for each color property for both __light__ and __dark__ modes.
2. To enable a specific `syntax-theme` add it to your `settings.yml` file, as shown below.

{% include code.html label="Configure the syntax-theme" %}
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

---

## Samples

> __Tip:__ Click header to copy a snippet.

### Bash

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

{% include arrow.html link="#syntax-highlighting" %}

---

### C

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

{% include arrow.html link="#syntax-highlighting" %}

---

### C++

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

{% include arrow.html link="#syntax-highlighting" %}

---

### Dart

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

{% include arrow.html link="#syntax-highlighting" %}

---

### Go

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

{% include arrow.html link="#syntax-highlighting" %}

---

### HTML

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

{% include arrow.html link="#syntax-highlighting" %}

---

### JSON

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

{% include arrow.html link="#syntax-highlighting" %}

---

### Java

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

{% include arrow.html link="#syntax-highlighting" %}

---

### JavaScript

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

{% include arrow.html link="#syntax-highlighting" %}

---

### Kotlin

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

{% include arrow.html link="#syntax-highlighting" %}

---

### Markdown

{% include code.html label="Markdown snippet" %}
```markdown
# Markdown

* __Howdy__
* _from_
* <ins>a</ins>
* [Markdown](https://en.wikipedia.org/wiki/Markdown)
* `document`!
```

{% include arrow.html link="#syntax-highlighting" %}

---

### Python

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

{% include arrow.html link="#syntax-highlighting" %}

---

### SCSS

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

{% include arrow.html link="#syntax-highlighting" %}

---

### SQL

{% include code.html label="SQL snippet" %}
```sql
-- Select orders for micky
SELECT *
FROM orders
WHERE cust_id = "mickey@mouse.com"
AND   price > 5000
AND   price <= 10000
```

{% include arrow.html link="#syntax-highlighting" %}

---

### YAML

{% include code.html label="YAML snippet" %}
```yaml
# ---------------------------------------------------------
# Yolo site settings. see: _config.yml for jekyll settings
# ---------------------------------------------------------
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

{% include arrow.html link="#syntax-highlighting" %}

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

{% include arrow.html link="#syntax-highlighting" %}

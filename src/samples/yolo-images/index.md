---
layout: default
tags:
- yolo-images
- single-page
- jekyll
---

## Thumbnail Images

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

## Square Images

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

## Circle Images

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

## 4-by-3 Images

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

## 3-by-4 Images

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

## 16-by-9 Images

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

## 9-by-16 Images

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

## Image Grid

Yolo has an Image Grid, which is similar to the Lightbox, except it shows the image inline, instead of in a modal.

__Summary:__

* 4 column flexbox to display images.
* Click an image to maximize.
* Click again to minimize.

__Configuration:__

* View the sample Image Grid data file: `_data/ig-images.yml`.
* Add image data into `_data/ig-images.yml`.
* Include `image/grid.html` on your page.

> __Note:__ The structure of the Image Grid data file is the same as the Lightbox.

### Default data file

The `_data/ig-images.yml` file is the default Image Grid data file, just replace with your data to display images.

{% include code.html info="Images from: _data/ig-images.yml" %}
{% raw %}
```html
{% include "image/grid.html" %}
```
{% endraw %}

{% include image/grid.html %}

### Custom data file

A custom data file can be added to render an Image Grid.

* Create a new file in `_data` and prefix name with `ig-`.
* Use the data file name (w/o `.yml` ext) as the value to `ig-data`.
* Customize the number of columns by setting `ig-columns`.

{% include code.html info="Images from: _data/ig-pets.yml" %}
{% raw %}
```html
{% include image/grid.html ig-data="ig-pets" ig-columns="2" %}
```
{% endraw %}

{% include image/grid.html ig-data="ig-pets" ig-columns="2" %}

[↑↑↑](#){: .back-to-top}

---

## Image Lightbox

Yolo includes a Lightbox to showcase pics.

__Summary:__

* 4 column flexbox to display images.
* Click an image to open the Lightbox.
* Click left or right, key `<` or `>` to move.

__Configuration:__

* View the sample Lightbox data file: `_data/lb-images.yml`.
* Add image data into `_data/lb-images.yml`.
* Include `image/lightbox.html` on your page.

> __Note:__ The structure of the Lightbox data file is the same as the Image Grid.

### Default data file

The `_data/lb-images.yml` file is the default Lightbox data file, just replace with your data to display images.

{% include code.html info="Images from: _data/lb-images.yml" %}
{% raw %}
```html
{% include image/lightbox.html %}
```
{% endraw %}

{% include image/lightbox.html %}

### Custom data file

A custom data file can be added to render a Lightbox.

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

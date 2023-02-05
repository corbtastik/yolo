---
layout: default
tags:
- yolo
- single-page
- jekyll
- images
---

## Yolo Images

There are 2 methods for defining the source of images for your Yolo single page site. 

1. [Site Images Property](#site-images-property) (i.e. `site.images`)
2. [Image Data Files](#image-data-files) (i.e. `_data/images.yml`, `_data/my-custom-images.yml`)

### Site Images Property

The value of `site.images` can be set to a subdirectory of `assets/images` or URI on a server.

__For example:__

* Setting `site.images=https://storage.googleapis.com/corbs-foto/yolo` will resolve images from a Google Cloud Storage bucket.
* Setting `site.images=assets/images` will resolve images from the `assets/images` directory relative to the Yolo webroot.

#### Site Images Sample

{% include code.html label="Site Images - sample" %}
{% raw %}
```html
{%
  include image/image.html
  classes="is-192-by-108"
  src="yolo/bluebonnet.png"
  description="A Texas Bluebonnet"
%}
```
{% endraw %}

{%
  include image/image.html
  classes="is-192-by-108"
  src="yolo/bluebonnet.png"
  description="A Texas Bluebonnet"
%}

###### Image Data Files

Images can also be sourced from a `_data` file that includes information about the image, such as the `name`, `src`,  and `description`.

---

### Page Interface

1. Front Matter: tags

### Images

#### Sample 1

* From: `site.images`
* Image: `include.src`

{%
include image/image.html
classes="is-192-by-108"
src="yolo/bluebonnet.png"
%}

#### Sample 2

* From: `site.images`
* Image: `include.src`
* Description: `include.description`

{%
include image/image.html
classes="is-192-by-108"
src="yolo/bluebonnet.png"
description="A Texas Bluebonnet"
%}

#### Sample 3

* From: `_data/images.yml`
    * name: Image name in `images.yml` file
    * src: Location of image
    * description: A little blurb about the image

```yaml
- name: "bucky-and-nacho"
  src: "/assets/images/custom/bucknach.png"
  description: "Bucky and Nacho at the park."
```

{%
include image/image.html
name="bucky-and-nacho"
classes="is-256"
%}

#### Sample 4

* From: `_data/images.yml`

```yaml
- name: "ranger-bucky"
  src: "https://storage.googleapis.com/corbs-foto/yolo/yolo/ranger-bucky.png"
```

{%
include image/image.html
name="ranger-bucky"
classes="is-256"
%}

#### Sample 5

* From: `_data/my-images.yml`

```yaml
- name: "cotton-candy-cone"
  src: "https://storage.googleapis.com/corbs-foto/yolo/marfa/cotton-candy-cone.jpg"
  description: "Cotton candy dipped cone at DQ in Marfa."
```

{%
include image/image.html
image-data="my-images"
name="cotton-candy-cone"
classes="is-256"
%}

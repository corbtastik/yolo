---
layout: default
tags:
- yolo
- single-page
- jekyll
- starter
---

## The Yolo Starter

The Yolo Starter is a tool to generate a Yolo site with custom settings.

### Customizations

Yolo supports only single page sites, thus all customizations apply to the one-and-only-one `index.md` page.

### Yolo settings

The Yolo `settings.json` object represents the core site settings for a Yolo site. The `settings` object is converted into a jekyll `_config.yml` file.

#### JSON

```json
{
  "title": "Yolo on my friend",
  "name": "Yolo",
  "description": "Loveable single page sites",
  "style": "corbs",
  "align": "left",
  "logo": "assets/images/site/logo.png",
  "images": "https://storage.googleapis.com/corbs-foto/yolo",
  "sidebar": {
    "logo": "assets/images/site/logo.png"
  }
}
```

#### YAML

```yaml
title: Yolo on my friend
name: Yolo
description: Loveable single page sites
style: corbs
align: left
logo: assets/images/site/logo.png
images: https://storage.googleapis.com/corbs-foto/yolo
sidebar:
  logo: assets/images/site/logo.png
```

#### Images and Resources

Your single page can use custom images and other resources such as media files. When you create a Yolo site with the Starter you can customize where those assets will reside.

##### Source Locations

There are 2 methods for defining the source of images for use on a Yolo page.

1. [Site Images Property](#site-images-property) (i.e. `site.images`)
2. [Image Data Files](#image-data-files) (i.e. `_data/images.yml`, `_data/my-custom-images.yml`)

###### Site Images Property

The value of `site.images` can be set to a subdirectory of `assets/images` or URI on a server.

__For example:__

* Setting `site.images=https://storage.googleapis.com/corbs-foto/yolo` will resolve images from a Google Cloud Storage bucket.
* Setting `site.images=assets/images/site` will resolve images from the `assets/images/site` directory relative to the Yolo webroot.

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

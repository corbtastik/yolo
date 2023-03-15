---
layout: default
links:
- yolo,https://github.com/corbtastik/yolo
- jekyll,https://jekyllrb.com
---

## Design Notes

* 3 Key Colors - primary, secondary, tertiary
* 3 Container Colors - primary-container, secondary-container, tertiary-container
* 6 On Colors
  * 3 On Key Colors - on-primary, on-secondary, on-tertiary
  * 3 On Container Colors - on-primary-container, on-secondary-container, on-tertiary-container
* 3 General Colors
  * 1 for links
  * Neutral
  * On Neutral

### Requirements

* Support dark and light modes
* Support independent color control for prominent text (headers)
* Support independent color control for prominent elements (tables, pills, buttons, icons)
* Support mono themes
  * Sidebar is same tonal palette as primary color
  * Code background is same tonal palette as primary color
  * Code highlighting is same tonal palette as primary color
* Support duo themes
  * Sidebar is contrasting tonal palette from primary color
  * Code background is contrasting tonal palette from primary color
  * Code highlighting is contrasting tonal palette from primary color

## Themes

Yolo doesn't implement an "according to hoyle" [gem based theme](https://jekyllrb.com/docs/themes/), but the colors and fonts can be customized as outlined below.

> __Note:__
>   * "Theming" for Yolo is accomplished by providing a custom scss file in `_sass/yolo/themes`. Each theme must specify "light" and "dark" values to support switching between the two modes.
>   * Add font-family in `_data/fonts.yml` to customize what fonts are available.

1. Create a new scss file in `_sass/yolo/themes/`.
2. Customize the theme values for light and dark modes.
3. Enable by setting `theme.name` in `_data/settings.yml`.

[↑↑↑](#){: .back-to-top}

---

## Colors

Colors in Yolo loosely follows Google's [Material Design v3 Color System](https://m3.material.io/styles/color/overview).

### Key Colors

Key colors are the heart of your theme and should pair well with each other, meaning they should [contrast](https://en.wikipedia.org/wiki/Contrast_(vision)) or [complement](https://en.wikipedia.org/wiki/Complementary_colors) each other in [hue](https://en.wikipedia.org/wiki/Hue).

Each theme file defines __3__ key color variables, for both __light__ and __dark__ modes. You need to provide css hex values for both modes, for example the `primary-color` for __light__ mode will be different from the __dark__ mode `primary-color`.

{%
include note.html
title="Complementary colors pair well"
text="Pick primary, secondary and tertiary colors that are compatible with each other. Complementary colors when placed on top or next to each other create contrast and break-up the visual space."
%}

1. `primary-color`: Defines the color for the page background.
2. `secondary-color`: Defines the color for prominent elements.
3. `tertiary-color`: Defines the color for


{% include flexbox.html columns="1" fill="primary-color" %}
{% include flexbox.html columns="1" fill="on-primary-color" %}
{% include flexbox.html columns="1" fill="primary-container-color" %}
{% include flexbox.html columns="1" fill="on-primary-container-color" %}
{% include flexbox.html columns="1" fill="secondary-color" %}
{% include flexbox.html columns="1" fill="on-secondary-color" %}
{% include flexbox.html columns="1" fill="secondary-container-color" %}
{% include flexbox.html columns="1" fill="on-secondary-container-color" %}
{% include flexbox.html columns="1" fill="tertiary-color" %}
{% include flexbox.html columns="1" fill="on-tertiary-color" %}
{% include flexbox.html columns="1" fill="tertiary-container-color" %}
{% include flexbox.html columns="1" fill="on-tertiary-container-color" %}
{% include flexbox.html columns="1" fill="accent-color" %}
{% include flexbox.html columns="1" fill="on-accent-color" %}
{% include flexbox.html columns="1" fill="link-color" %}
{% include flexbox.html columns="1" fill="neutral-color" %}
{% include flexbox.html columns="1" fill="on-neutral-color" %}
{% include flexbox.html columns="1" fill="error-color" %}
{% include flexbox.html columns="1" fill="on-error-color" %}
{% include flexbox.html columns="1" fill="warn-color" %}
{% include flexbox.html columns="1" fill="on-warn-color" %}
{% include flexbox.html columns="1" fill="info-color" %}
{% include flexbox.html columns="1" fill="on-info-color" %}

[↑↑↑](#){: .back-to-top}

---

## Typography

Yolo's fonts can be customized as outlined in [Themes](#themes).

{% include typography.html %}

[↑↑↑](#){: .back-to-top}
# Yolo

Yolo is laser focused on static single page sites, and while anyone can Yolo, it's purposely built for writers,
techies, and picture taking folk.

> _I don't always use single-page sites but when I do, I [yolo](https://github.com/corbtastik/yolo)._

## Goals for Yolo

### 1. Live the best single page life.

Pamper single page sites like we pamper our pets.

### 2. Strive for simplicity.

No dependencies other than [jekyll](https://jekyllrb.com/).

### 3. Make it customizable

Bring your own colors and fonts.

---

## Yolo demo

* Yolo on Github Pages - [https://corbtastik.github.io/yolo](https://corbtastik.github.io/yolo)
* Yolo on Surge - [https://corbtastik-yolo.surge.sh](https://corbtastik-yolo.surge.sh)

---

## Getting Started

* You need [jekyll](https://jekyllrb.com/).

```bash
git clone https://github.com/corbtastik/yolo.git
cd yolo
jekyll build
jekyll serve  # open http://localhost:4000
```

---

## Next Steps

Take a gander at the [demo page](https://corbtastik.github.io/yolo/#getting-started) for info on usage, themes, and customizations.

---

## Yolo themes

There are 5 theme scss files included in `_sass/yolo/themes`, each defines color variables for dark and light modes.  Create your own scss file and configure the name in `_config.yml`.

### Corbs > Dark

<img src="https://storage.googleapis.com/corbs-foto/yolo/screenshots/yolo-corbs-dark-01.png" alt="Yolo Corbs Dark" style="width:384px;">

### Corbs > Light

<img src="https://storage.googleapis.com/corbs-foto/yolo/screenshots/yolo-corbs-light-01.png" alt="Yolo Corbs Light" style="width:384px;">

### Arcade > Dark

<img src="https://storage.googleapis.com/corbs-foto/yolo/screenshots/yolo-arcade-dark-01.png" alt="Yolo Arcade Dark" style="width:384px;">

### Arcade > Light

<img src="https://storage.googleapis.com/corbs-foto/yolo/screenshots/yolo-arcade-light-01.png" alt="Yolo Arcade Light" style="width:384px;">

### Skeletor > Dark

<img src="https://storage.googleapis.com/corbs-foto/yolo/screenshots/yolo-skeletor-dark-01.png" alt="Yolo Skeletor Dark" style="width:384px;">

### Skeletor > Light

<img src="https://storage.googleapis.com/corbs-foto/yolo/screenshots/yolo-skeletor-light-01.png" alt="Yolo Skeletor Light" style="width:384px;">

### Solo > Dark

<img src="https://storage.googleapis.com/corbs-foto/yolo/screenshots/yolo-solo-dark-01.png" alt="Yolo Solo Dark" style="width:384px;">

### Solo > Light

<img src="https://storage.googleapis.com/corbs-foto/yolo/screenshots/yolo-solo-light-01.png" alt="Yolo Solo Light" style="width:384px;">

### Weekly > Dark

<img src="https://storage.googleapis.com/corbs-foto/yolo/screenshots/yolo-weekly-dark-01.png" alt="Yolo Weekly Dark" style="width:384px;">

### Weekly > Light

<img src="https://storage.googleapis.com/corbs-foto/yolo/screenshots/yolo-weekly-light-01.png" alt="Yolo Weekly Light" style="width:384px;">

---

## Makefile docs

### open a single-page

The `open` target will save the current single-page on the site root and load one from `src/samples`. Every single-page will have at least two files: `index.md` and `_config.yml`. A single-page site is described by a `yolo.json` file, which contains information on what files define the single-page site.

As mentioned every single-page site will have `index.md` and `_config.yml` files, but additional files, such as `_data`, and `scss` files can be configured. The following examples document how to use the `open` target.

```json
{
  "site": "yolo-main",
  "config": "_config.yml",
  "index": "index.md",
  "data": [
    "fonts.yml",
    "ig-images.yml",
    "ig-pets.yml",
    "images.yml",
    "lb-images.yml",
    "lb-marfa.yml",
    "prezos.yml",
    "videos.yml"
  ],
  "assets": {
    "images": [
      "bucky.png",
      "error.png",
      "logo.png",
      "moonpie.png"
    ]
  },
  "theme": "_corbs.scss"
}
```

```bash
# -----------------------------------------------------------------------------
# Save site automation - saves the current site to ./src/samples/$SAVE_SITE
# -----------------------------------------------------------------------------
# Get site in use
SAVE_SITE=$(cat ./yolo.json | jq -r '.site')
# Get name of the index file to save as, NOTE: it can be save with a different name than index.md
INDEX_FILE=$(cat ./yolo.json | jq -r --arg dest "./src/samples/$SAVE_SITE/" '$dest + .index')
cp ./index.md $(echo $INDEX_FILE)
# Get name of the config file to save as, NOTE: it can be save with a different name than _config.yml
CONFIG_FILE=$(cat ./yolo.json | jq -r --arg dest "./src/samples/$SAVE_SITE/" '$dest + .config')
cp ./_config.yml $(echo $CONFIG_FILE)
# Get name of the sass theme file to save
THEME_FILE=$(cat ./yolo.json | jq -r --arg source "./_sass/yolo/themes/" '$source + .theme')
cp $(echo $THEME_FILE) ./src/samples/$SAVE_SITE/_sass/yolo/themes/
# Save optional _data files
DATA_FILES=$(cat ./yolo.json | jq -r --arg source "./_data/" '$source + .data[]')
DATA_FILES="${DATA_FILES//$'\n'/ }"
cp $(echo $DATA_FILES) ./src/samples/$SAVE_SITE/_data/
# Save optional assets files
IMAGE_FILES=$(cat ./yolo.json | jq -r --arg source "./assets/images/" '$source + .assets.images[]')
IMAGE_FILES="${IMAGE_FILES//$'\n'/ }"
cp $(echo $IMAGE_FILES) ./src/samples/$SAVE_SITE/assets/images/
# Copy the yolo.json file to $SAVE_SITE
cp ./yolo.json ./src/samples/$SAVE_SITE/
# -----------------------------------------------------------------------------
# Open site automation
# -----------------------------------------------------------------------------
# Get site name to open
OPEN_SITE=yolo-main
# Copy required file: index.md
INDEX_FILE=$(cat ./src/samples/$OPEN_SITE/yolo.json \
  | jq -r --arg source "./src/samples/$OPEN_SITE/" '$source + .index')
cp $(echo $INDEX_FILE) ./index.md
# Copy required file: _config.yml
CONFIG_FILE=$(cat ./src/samples/$OPEN_SITE/yolo.json \
  | jq -r --arg source "./src/samples/$OPEN_SITE/" '$source + .config')
cp $(echo $CONFIG_FILE) ./_config.yml
# Get name of the sass theme file to open
THEME_FILE=$(cat ./src/samples/$OPEN_SITE/yolo.json \
  | jq -r --arg source "./src/samples/$OPEN_SITE/_sass/yolo/themes/" '$source + .theme')
cp $(echo $THEME_FILE) ./_sass/yolo/themes/
# Copy optional _data files
DATA_FILES=$(cat ./src/samples/$OPEN_SITE/yolo.json \
  | jq -r --arg source "./src/samples/$OPEN_SITE/_data/" '$source + .data[]')
DATA_FILES="${DATA_FILES//$'\n'/ }"
cp $(echo $DATA_FILES) _data/
# Copy assets
IMAGE_FILES=$(cat ./src/samples/$OPEN_SITE/yolo.json \
  | jq -r --arg source "./src/samples/$OPEN_SITE/assets/images/" '$source + .assets.images[]')
IMAGE_FILES="${IMAGE_FILES//$'\n'/ }"
cp $(echo $IMAGE_FILES) ./assets/images/
# Copy yolo.json to site root
cp ./src/samples/$OPEN_SITE/yolo.json ./
```

## License

[MIT License](/LICENSE)

---

## Theme refactor

> Alignment with Google's Material Design

```bash
yolo/_theme.scss:  background-color: var(--primary-color);
yolo/_theme.scss:    color: var(--primary-color);
yolo/_theme.scss:    background-color: var(--primary-color);
yolo/_theme.scss:    color: var(--primary-color);
yolo/_theme.scss:    color: var(--primary-color);
yolo/_theme.scss:  .primary-color {
yolo/_theme.scss:    background-color: var(--primary-color);
yolo/_theme.scss:    color: var(--primary-color);
yolo/_theme.scss:    color: var(--primary-color);
yolo/_theme.scss:    color: var(--primary-color);

yolo/_theme.scss:  color: var(--secondary-color);
yolo/_theme.scss:    color: var(--secondary-color);
yolo/_theme.scss:      color: var(--secondary-color);
yolo/_theme.scss:      color: var(--secondary-color);
yolo/_theme.scss:      color: var(--secondary-color);
yolo/_theme.scss:    color: var(--secondary-color);
yolo/_theme.scss:      background-color: var(--secondary-color);
yolo/_theme.scss:    background-color: var(--secondary-color);
yolo/_theme.scss:    color: var(--secondary-color);
yolo/_theme.scss:  .secondary-color {
yolo/_theme.scss:    background-color: var(--secondary-color);
yolo/_theme.scss:    color: var(--secondary-color);

yolo/_theme.scss:    color: var(--accent-color);
yolo/_theme.scss:    border-left: .25rem solid var(--accent-color);;
yolo/_theme.scss:    border-bottom: 1px dashed var(--accent-color);
yolo/_theme.scss:      color: var(--accent-color);
yolo/_theme.scss:      color: var(--accent-color);
yolo/_theme.scss:    border-top: 1px solid var(--accent-color);
yolo/_theme.scss:    border-bottom: 1px solid var(--accent-color);
yolo/_theme.scss:    border-left: 1px solid var(--accent-color);
yolo/_theme.scss:    border-right: 1px solid var(--accent-color);
yolo/_theme.scss:    background-color: var(--accent-color);
yolo/_theme.scss:      color: var(--accent-color);
yolo/_theme.scss:      color: var(--accent-color);
yolo/_theme.scss:    color: var(--accent-color);
yolo/_theme.scss:    color: var(--accent-color);
yolo/_theme.scss:      background-color: rgba(var(--accent-color), 0.3);
yolo/_theme.scss:      color: var(--accent-color);
yolo/_theme.scss:      color: var(--accent-color);
yolo/_theme.scss:    background-color: var(--accent-color);
yolo/_theme.scss:      background-color: var(--accent-color);
yolo/_theme.scss:    background-color: var(--accent-color);
yolo/_theme.scss:  .accent-color {
yolo/_theme.scss:    background-color: var(--accent-color);

yolo/_theme.scss:    color: var(--link-color);
yolo/_theme.scss:    color: var(--link-color);
yolo/_theme.scss:  .link-color {
yolo/_theme.scss:    background-color: var(--link-color);

yolo/_theme.scss:    background-color: var(--code-background-color);
yolo/_theme.scss:  .code-background-color {
yolo/_theme.scss:    background-color: var(--code-background-color);
yolo/_theme.scss:    color: var(--code-background-color);
yolo/_theme.scss:    background: var(--code-background-color);

yolo/_theme.scss:    color: var(--code-color);
yolo/_theme.scss:    color: var(--code-color);
yolo/_theme.scss:    color: var(--code-color);
yolo/_theme.scss:  .code-color {
yolo/_theme.scss:    background-color: var(--code-color);
yolo/_theme.scss:    color: var(--code-color);

yolo/_theme.scss:    background-color: var(--sidebar-color);
yolo/_theme.scss:  .sidebar-color {
yolo/_theme.scss:    background-color: var(--sidebar-color);


```

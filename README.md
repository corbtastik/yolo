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

```bash
# parse yolo.json
cat ./src/samples/yolo-dallas/yolo.json | jq -r --arg cmd "cp " '$cmd + .data[0]'
```

## License

[MIT License](/LICENSE)

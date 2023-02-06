#!/bin/bash
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
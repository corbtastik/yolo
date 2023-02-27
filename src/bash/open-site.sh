#!/bin/bash
#------------------------------------------------------------------------------
# Options open-site
#------------------------------------------------------------------------------
open=${open:-null}
date=${date:-$(date +%Y-%m-%d)}
#------------------------------------------------------------------------------
# Parse input options
#------------------------------------------------------------------------------
while [ $# -gt 0 ]; do
   if [[ $1 == *"--"* ]]; then
        param="${1/--/}"
        declare $param="$2"
   fi
  shift
done
#------------------------------------------------------------------------------
# Input validation, ensure required values are set, otherwise exit.
#------------------------------------------------------------------------------
if [ ${open} == "null" ]; then
  echo "Input Error: --open is required"
  echo "      Usage: open-site.sh --open yolo-main"
  exit 1
fi
# -----------------------------------------------------------------------------
# Save site automation - saves the current site to ./src/samples/$SAVE_SITE
# -----------------------------------------------------------------------------
# Get site in use
SAVE_SITE=$(cat ./yolo.json | jq -r '.site')
# Get name of the index file to save as, NOTE: it can be save with a different name than index.md
SAVE_INDEX_FILE=$(cat ./yolo.json | jq -r --arg dest "./src/samples/$SAVE_SITE/" '$dest + .index')
# Get name of the config file to save as, NOTE: it can be save with a different name than _config.yml
SAVE_CONFIG_FILE=$(cat ./yolo.json | jq -r --arg dest "./src/samples/$SAVE_SITE/" '$dest + .config')
# Get name of the sass theme file to save
SAVE_THEME_FILE=$(cat ./yolo.json | jq -r --arg source "./_sass/yolo/themes/" '$source + .theme')
# Save optional _data files
SAVE_DATA_FILES=$(cat ./yolo.json | jq -r --arg source "./_data/" '$source + .data[]')
SAVE_DATA_FILES="${SAVE_DATA_FILES//$'\n'/ }"
# Save optional assets files
SAVE_IMAGE_FILES=$(cat ./yolo.json | jq -r --arg source "./assets/images/" '$source + .assets.images[]')
SAVE_IMAGE_FILES="${SAVE_IMAGE_FILES//$'\n'/ }"
# -----------------------------------------------------------------------------
# Open site automation
# -----------------------------------------------------------------------------
# Get site name to open
OPEN_SITE=${open}
# Copy required file: index.md
OPEN_INDEX_FILE=$(cat ./src/samples/$OPEN_SITE/yolo.json \
  | jq -r --arg source "./src/samples/$OPEN_SITE/" '$source + .index')
# Copy required file: _config.yml
OPEN_CONFIG_FILE=$(cat ./src/samples/$OPEN_SITE/yolo.json \
  | jq -r --arg source "./src/samples/$OPEN_SITE/" '$source + .config')
# Get name of the sass theme file to open
OPEN_THEME_FILE=$(cat ./src/samples/$OPEN_SITE/yolo.json \
  | jq -r --arg source "./src/samples/$OPEN_SITE/_sass/yolo/themes/" '$source + .theme')
# Copy optional _data files
OPEN_DATA_FILES=$(cat ./src/samples/$OPEN_SITE/yolo.json \
  | jq -r --arg source "./src/samples/$OPEN_SITE/_data/" '$source + .data[]')
OPEN_DATA_FILES="${OPEN_DATA_FILES//$'\n'/ }"
# Copy assets
OPEN_IMAGE_FILES=$(cat ./src/samples/$OPEN_SITE/yolo.json \
  | jq -r --arg source "./src/samples/$OPEN_SITE/assets/images/" '$source + .assets.images[]')
OPEN_IMAGE_FILES="${OPEN_IMAGE_FILES//$'\n'/ }"
#------------------------------------------------------------------------------
# Print open-site options
#------------------------------------------------------------------------------
echo "= yolo:open-site ======================================================"
echo "       open: ${open}"
echo "      index: ${OPEN_INDEX_FILE}"
echo "     config: ${OPEN_CONFIG_FILE}"
echo "      theme: ${OPEN_THEME_FILE}"
echo "       data: ${OPEN_DATA_FILES}"
echo "     images: ${OPEN_IMAGE_FILES}"
echo "-----------------------------------------------------------------------"
echo "       save: ${SAVE_SITE}"
echo "      index: ${SAVE_INDEX_FILE}"
echo "     config: ${SAVE_CONFIG_FILE}"
echo "      theme: ${SAVE_THEME_FILE}"
echo "       data: ${SAVE_DATA_FILES}"
echo "     images: ${SAVE_IMAGE_FILES}"
echo "======================================================================="
#------------------------------------------------------------------------------
# Execute save commands
#------------------------------------------------------------------------------
cp ./index.md $(echo $SAVE_INDEX_FILE)
# cp ./_config.yml $(echo $SAVE_CONFIG_FILE)
# cp $(echo $SAVE_THEME_FILE) ./src/samples/$SAVE_SITE/_sass/yolo/themes/
cp $(echo $SAVE_DATA_FILES) ./src/samples/$SAVE_SITE/_data/
cp $(echo $SAVE_IMAGE_FILES) ./src/samples/$SAVE_SITE/assets/images/
cp ./yolo.json ./src/samples/$SAVE_SITE/
#------------------------------------------------------------------------------
# Execute open commands
#------------------------------------------------------------------------------
cp $(echo $OPEN_INDEX_FILE) ./index.md
# cp $(echo $OPEN_CONFIG_FILE) ./_config.yml
# cp $(echo $OPEN_THEME_FILE) ./_sass/yolo/themes/
cp $(echo $OPEN_DATA_FILES) _data/
cp $(echo $OPEN_IMAGE_FILES) ./assets/images/
cp ./src/samples/$OPEN_SITE/yolo.json ./
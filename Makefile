# =============================================================================
# Make variables
# =============================================================================
CONTAINER_REGISTRY=quay.io/corbsmartin
IMAGE_NAME=solo
IMAGE_TAG=latest
OUTPUT_DIR=.container-build
# =============================================================================
# Build solo container image with all themes
# =============================================================================
init:
	@mkdir -p $(OUTPUT_DIR)/$(IMAGE_NAME)

all: init \
	site \
	arcade \
	blue \
	corbs \
	dark \
	dracula \
	eightyfour \
	githubdark \
	green \
	light \
	monokai \
	nightowl \
	purple \
	red \
	soft \
	solarized

clean:
	@rm -rf $(OUTPUT_DIR)/*

site:
	@jekyll build --config _config.yml

arcade:
	@echo "style: arcade" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/arcade

blue:
	@echo "style: blue" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/blue

corbs:
	@echo "style: corbs" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/corbs

dark:
	@echo "style: dark" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/dark

dracula:
	@echo "style: dracula" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/dracula

eightyfour:
	@echo "style: eightyfour" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/eightyfour

githubdark:
	@echo "style: githubdark" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/githubdark

green:
	@echo "style: green" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/green

light:
	@echo "style: light" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/light

monokai:
	@echo "style: monokai" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/monokai

nightowl:
	@echo "style: nightowl" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/nightowl

purple:
	@echo "style: purple" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/purple

red:
	@echo "style: red" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/red

soft:
	@echo "style: soft" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/soft

solarized:
	@echo "style: solarized" > $(OUTPUT_DIR)/_style.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/_style.yml --destination $(OUTPUT_DIR)/$(IMAGE_NAME)/solarized

image: clean all
	@podman build -t $(IMAGE_NAME):$(IMAGE_TAG) .

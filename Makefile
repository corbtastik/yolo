# =============================================================================
# Make variables
# =============================================================================
CONTAINER_REGISTRY=quay.io/corbsmartin
IMAGE_NAME=yolo
IMAGE_TAG=v1.16
OUTPUT_DIR=.yolo-build
JEKYLL_PORT=4000
# -----------------------------------------------------------------------------
# Targets for working with a Yolo site.
# -----------------------------------------------------------------------------
clean:
	@rm -rf $(OUTPUT_DIR)

run:
	@jekyll serve --port $(JEKYLL_PORT)

yolo-site:
	@mkdir -p $(OUTPUT_DIR)/$(IMAGE_NAME)
	@echo "version: $(IMAGE_TAG)" > $(OUTPUT_DIR)/$(IMAGE_NAME)/_version.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/$(IMAGE_NAME)/_version.yml \
		--destination $(OUTPUT_DIR)/$(IMAGE_NAME)

yolo-reset:
	@mv .yolo-build/index.md ./index.md

new-theme:
	@cp ./src/templates/_theme.scss _sass/yolo/themes/_$(NAME).scss

# -----------------------------------------------------------------------------
# Targets for running containerizing Yolo
# -----------------------------------------------------------------------------
yoloc:
	@podman build -f ./src/yoloc.Containerfile -t yoloc:latest ./src

yolo: yoloc
	@podman build -f Containerfile -t $(IMAGE_NAME):$(IMAGE_TAG) .
	@podman tag $(IMAGE_NAME):$(IMAGE_TAG) $(IMAGE_NAME):latest

pod: yolo
	-podman rm -f yolo
	@podman run --name yolo -d -p 9696:9696 yolo:latest
	@podman ps

# -----------------------------------------------------------------------------
# Targets for building a site for each Yolo theme.
# -----------------------------------------------------------------------------
all-themes: arcade corbs solo yinyang

clean-themes:
	@rm -rf $(OUTPUT_DIR)/arcade
	@rm -rf $(OUTPUT_DIR)/corbs
	@rm -rf $(OUTPUT_DIR)/domino
	@rm -rf $(OUTPUT_DIR)/yinyang

arcade:
	@mkdir -p $(OUTPUT_DIR)/arcade
	@echo "style: arcade" > $(OUTPUT_DIR)/arcade/_style.yml
	@jekyll build \
		--config _config.yml,$(OUTPUT_DIR)/arcade/_style.yml \
		--destination $(OUTPUT_DIR)/arcade

corbs:
	@mkdir -p $(OUTPUT_DIR)/corbs
	@echo "style: corbs" > $(OUTPUT_DIR)/corbs/_style.yml
	@jekyll build \
		--config _config.yml,$(OUTPUT_DIR)/corbs/_style.yml \
		--destination $(OUTPUT_DIR)/corbs

solo:
	@mkdir -p $(OUTPUT_DIR)/solo
	@echo "style: solo" > $(OUTPUT_DIR)/solo/_style.yml
	@jekyll build \
		--config _config.yml,$(OUTPUT_DIR)/solo/_style.yml \
		--destination $(OUTPUT_DIR)/solo

yinyang:
	@mkdir -p $(OUTPUT_DIR)/yinyang
	@echo "style: yinyang" > $(OUTPUT_DIR)/yinyang/_style.yml
	@jekyll build \
		--config _config.yml,$(OUTPUT_DIR)/yinyang/_style.yml \
		--destination $(OUTPUT_DIR)/yinyang

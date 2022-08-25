# =============================================================================
# Make variables
# =============================================================================
CONTAINER_REGISTRY=quay.io/corbsmartin
IMAGE_NAME=yolo
IMAGE_TAG=v1.6
OUTPUT_DIR=.site-build
# -----------------------------------------------------------------------------
# Targets for working with a single site build of Solo.
# -----------------------------------------------------------------------------
clean:
	@rm -rf $(OUTPUT_DIR)

yolo-site:
	@mkdir -p $(OUTPUT_DIR)/$(IMAGE_NAME)
	@echo "version: $(IMAGE_TAG)" > $(OUTPUT_DIR)/$(IMAGE_NAME)/_version.yml
	@jekyll build --config _config.yml,$(OUTPUT_DIR)/$(IMAGE_NAME)/_version.yml \
		--destination $(OUTPUT_DIR)/$(IMAGE_NAME)

#title: Yolo, a single page theme
#tag_text: Yolo
#description: A single pager theme
yolo-post:
	@mv index.md .site-build/
	@cp src/road-to-van-horn.md ./index.md
	@echo "title: Road to Van Horn" > $(OUTPUT_DIR)/$(IMAGE_NAME)/_version.yml

yolo-reset:
	@mv .site-build/index.md ./index.md

yolo-image: yolo-site
	@podman build -f Containerfile -t $(IMAGE_NAME):$(IMAGE_TAG) .
	@podman tag $(IMAGE_NAME):$(IMAGE_TAG) $(IMAGE_NAME):latest

# -----------------------------------------------------------------------------
# Targets for running "jekyll build" for every Solo style.
# -----------------------------------------------------------------------------
arcade:
	@echo "style: arcade" > $(OUTPUT_DIR)/_style.yml
	@jekyll build \
		--config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_version.yml \
		--destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/arcade

corbs:
	@echo "style: corbs" > $(OUTPUT_DIR)/_style.yml
	@jekyll build \
		--config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_version.yml \
		--destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/corbs

dark:
	@echo "style: dark" > $(OUTPUT_DIR)/_style.yml
	@jekyll build \
		--config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_version.yml \
		--destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/dark

light:
	@echo "style: light" > $(OUTPUT_DIR)/_style.yml
	@jekyll build \
		--config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_version.yml \
		--destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/light

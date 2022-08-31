# =============================================================================
# Make variables
# =============================================================================
CONTAINER_REGISTRY=quay.io/corbsmartin
IMAGE_NAME=yolo
IMAGE_TAG=v1.10
OUTPUT_DIR=.site-build
JEKYLL_PORT=4000
# -----------------------------------------------------------------------------
# Targets for working with a single site build of Solo.
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
	@mv .site-build/index.md ./index.md

# -----------------------------------------------------------------------------
# Targets for running containerizing yolo
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
# Targets for running "jekyll build" for every Solo style.
# -----------------------------------------------------------------------------
arcade:
	@echo "style: arcade" > $(OUTPUT_DIR)/_style.yml
	@jekyll build \
		--config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_version.yml \
		--destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/arcade

cloudy:
	@echo "style: cloudy" > $(OUTPUT_DIR)/_style.yml
	@jekyll build \
		--config _config.yml,$(OUTPUT_DIR)/_style.yml,$(OUTPUT_DIR)/_version.yml \
		--destination $(OUTPUT_DIR)/$(SAMPLER_DIR)/cloudy

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

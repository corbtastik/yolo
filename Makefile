# -----------------------------------------------------------------------------
# Makefile for various Yolo tasks
# -----------------------------------------------------------------------------
APP_NAME=yolo
APP_VERSION=1.4
IMAGE_NAME=$(APP_NAME)
IMAGE_TAG=v$(APP_VERSION)
CONTAINER_REGISTRY=quay.io/corbsmartin
# -----------------------------------------------------------------------------
# Jekyll targets
# -----------------------------------------------------------------------------
run:
	@jekyll serve
# -----------------------------------------------------------------------------
# yoloc builder image
# -----------------------------------------------------------------------------
yoloc:
	@podman build -f ./src/yoloc.Containerfile -t yoloc:latest ./src
# -----------------------------------------------------------------------------
# yolo runtime image
# -----------------------------------------------------------------------------
yolo: yoloc
	@podman build -f Containerfile -t $(IMAGE_NAME):$(IMAGE_TAG) .
	@podman tag $(IMAGE_NAME):$(IMAGE_TAG) $(IMAGE_NAME):latest
	@podman tag $(IMAGE_NAME):latest $(CONTAINER_REGISTRY)/$(IMAGE_NAME):latest
# -----------------------------------------------------------------------------
# Run yolo pod with podman
# -----------------------------------------------------------------------------
yolo-pod: yolo
	@podman rm -f yolo
	@podman run --name yolo -d -p 9696:9696 $(CONTAINER_REGISTRY)/$(IMAGE_NAME):latest
# -----------------------------------------------------------------------------
# Publish to surge.sh
# -----------------------------------------------------------------------------
surge-yolo:
	@echo "Deploying to surge: https://corbtastik-$(APP_NAME).surge.sh"
	@jekyll clean
	@jekyll build
	@surge _site/ corbtastik-$(APP_NAME).surge.sh

surge-theme:
	@$(call is_defined, THEME, THEME is required: usage THEME=newwave)
	@echo "Uploading: https://corbtastik-yolo-$(SURGE_NAME).surge.sh"
	@jekyll clean
	@jekyll build
	@surge _site/ corbtastik-yolo-$(THEME).surge.sh
# -----------------------------------------------------------------------------
# Create new Yolo sites
# -----------------------------------------------------------------------------
starter:
	@$(call is_defined, SITE_NAME, SITE_NAME is required: usage SITE_NAME=my-site)
	@mkdir -p .generated/$(SITE_NAME)
	@git clone https://github.com/corbtastik/yolo.git .generated/$(SITE_NAME)
	@rm -rf .generated/$(SITE_NAME)/.git
	@mv .generated/$(SITE_NAME)/src/starter/templates/index.md .generated/$(SITE_NAME)/index.md

# -----------------------------------------------------------------------------
# Make utility functions
# -----------------------------------------------------------------------------
# Check that given variables are set and have non-empty values,
# exit with an error otherwise.
#
# Params:
#   1. Variable name(s) to test.
#   2. (optional) Error message to print.
# How to use:
# $(call is_defined, MY_FLAG)
# $(call is_defined, OUT_DIR, build directory)
# $(call is_defined, BIN_DIR, where to put binary artifacts)
# $(call is_defined, LIB_INCLUDE_DIR LIB_SOURCE_DIR, library path)
is_defined = \
    $(strip $(foreach 1,$1, \
        $(call __is_defined,$1,$(strip $(value 2)))))
__is_defined = \
    $(if $(value $1),, \
      $(error Undefined $1$(if $2, ($2))))

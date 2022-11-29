# -----------------------------------------------------------------------------
# Yolo Makefile for building a container image
# -----------------------------------------------------------------------------
CONTAINER_REGISTRY=quay.io/corbsmartin
IMAGE_NAME=yolo
IMAGE_TAG=v1.0
# -----------------------------------------------------------------------------
# yoloc builder image (ubi8-minimal)
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
# Targets for working with single page samples in ./src/samples
# -----------------------------------------------------------------------------
backup:
	@echo "Backing up index.md and _config.yml"
	@mv ./index.md ./index.md.backup
	@mv ./_config.yml ./_config.yml.backup

restore:
	@echo "Restoring index.md and _config.yml"
	@mv ./index.md.backup ./index.md
	@mv ./_config.yml.backup ./_config.yml

open-lite: backup
	@echo "Opening site: ./src/samples/yolo-lite"
	@cp ./src/samples/yolo-lite/index.md ./index.md
	@cp ./src/samples/yolo-lite/_config.yml ./_config.yml

save-lite:
	@echo "Saving site: ./src/samples/yolo-lite"
	@mv ./index.md ./src/samples/yolo-lite/index.md
	@mv ./_config.yml ./src/samples/yolo-lite/_config.yml
	@$(call restore)

open-weekly: backup
	@echo "Opening site: ./src/samples/yolo-weekly"
	@cp ./src/samples/yolo-weekly/index.md ./index.md
	@cp ./src/samples/yolo-weekly/_config.yml ./_config.yml

save-weekly:
	@echo "Saving site: ./src/samples/yolo-lite"
	@cp ./index.md ./src/samples/yolo-weekly/index.md
	@cp ./_config.yml ./src/samples/yolo-weekly/_config.yml
	@$(call restore)
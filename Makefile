# -----------------------------------------------------------------------------
# Yolo Makefile for building a container image
# -----------------------------------------------------------------------------
CONTAINER_REGISTRY=quay.io/corbsmartin
IMAGE_NAME=yolo
IMAGE_TAG=v1.0
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

pod: yolo
	@podman rm -f yolo
	@podman run --name yolo -d -p 9696:9696 $(CONTAINER_REGISTRY)/$(IMAGE_NAME):latest

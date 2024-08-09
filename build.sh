#!/bin/bash

scriptname=$(readlink -f "$0")
dirname=$(dirname "$scriptname")

BASE_IMAGE=docker.io/alpine
BASE_IMAGE_TAG=3.20
OUTPUT_IMAGE=ghcr.io/valkolaci/container-ssh-client
OUTPUT_IMAGE_TAG="${BASE_IMAGE_TAG}"

build_dir="$dirname/build"

export build_dir BASE_IMAGE BASE_IMAGE_TAG OUTPUT_IMAGE OUTPUT_IMAGE_TAG

docker build \
  --build-arg BASE_IMAGE \
  --build-arg BASE_IMAGE_TAG \
  -t "${OUTPUT_IMAGE}:${OUTPUT_IMAGE_TAG}" "$build_dir"

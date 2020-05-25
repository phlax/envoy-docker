#!/usr/bin/make -f

SHELL := /bin/bash


image:
	cd context && \
	  	 docker build -t phlax/envoy .

docker-push:
	docker push phlax/envoy

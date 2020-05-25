
ARG BUILD_FROM=envoyproxy/envoy-alpine:v1.14.1

FROM $BUILD_FROM


RUN apk update \
        && apk add --no-cache shadow su-exec \
        && addgroup -S envoy && adduser --no-create-home -S envoy -G envoy

COPY docker-entrypoint.sh /docker-entrypoint.sh

HEALTHCHECK --interval=10s --timeout=1s --retries=5 \
	CMD netstat -plnt | grep 9901

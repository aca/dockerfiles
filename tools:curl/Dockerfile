FROM debian:bullseye-slim

ENV LANG C.UTF-8

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
    ca-certificates \
    socat \
	; \
	rm -rf /var/lib/apt/lists/*

FROM debian:bookworm-slim

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
    ca-certificates \
    luit \
	; \
	rm -rf /var/lib/apt/lists/*

FROM openjdk:18-slim-bullseye

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
	; \
	rm -rf /var/lib/apt/lists/*

WORKDIR /kafka
RUN curl "https://dlcdn.apache.org/kafka/3.0.0/kafka_2.13-3.0.0.tgz" | tar -xz
WORKDIR /kafka/kafka_2.13-3.0.0/bin

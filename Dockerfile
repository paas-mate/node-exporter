FROM ttbb/base

WORKDIR /opt/sh

ENV NODE_EXPORTER_HOME /opt/sh/node_exporter

ARG version=1.3.1
ARG TARGETARCH

RUN wget https://github.com/prometheus/node_exporter/releases/download/v$version/node_exporter-$version.linux-$TARGETARCH.tar.gz  && \
mkdir -p /opt/sh/node_exporter && \
tar -xf node_exporter-$version.linux-$TARGETARCH.tar.gz -C /opt/sh/node_exporter --strip-components 1 && \
rm -rf node_exporter-$version.linux-$TARGETARCH.tar.gz

WORKDIR /opt/sh/node_exporter

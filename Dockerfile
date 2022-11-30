FROM shoothzj/base

WORKDIR /opt

ENV NODE_EXPORTER_HOME /opt/node_exporter

ARG version=1.5.0
ARG TARGETARCH

RUN wget https://github.com/prometheus/node_exporter/releases/download/v$version/node_exporter-$version.linux-$TARGETARCH.tar.gz  && \
mkdir -p /opt/node_exporter && \
tar -xf node_exporter-$version.linux-$TARGETARCH.tar.gz -C /opt/node_exporter --strip-components 1 && \
rm -rf node_exporter-$version.linux-$TARGETARCH.tar.gz

WORKDIR /opt/node_exporter

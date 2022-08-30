FROM debian:bullseye-slim

LABEL maintainer="hack3d <hack3d.dev@googlemail.com>"

RUN apt-get update -qq \
    && apt-get install  -qq -y tftpd-hpa=5.2+20150808-1+b1 --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["in.tftpd", "--ipv4", "--foreground", "--listen", "--address", "0.0.0.0:69", "--secure", "/data"]

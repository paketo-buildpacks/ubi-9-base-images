FROM registry.access.redhat.com/ubi9/ubi-minimal:latest
LABEL org.opencontainers.image.source="https://github.com/paketo-buildpacks/ubi-9-base-images"
USER root
RUN mkdir -p /etc/buildpacks
COPY ./images.json /etc/buildpacks/images.json
RUN chmod 644 /etc/buildpacks/images.json

ARG BASE_IMAGE_TAG
FROM alpine:${BASE_IMAGE_TAG}
RUN apk update && \
  apk add autossh && \
  apk cache purge
ENTRYPOINT ["/usr/bin/autossh"]
CMD []

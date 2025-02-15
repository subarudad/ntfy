FROM alpine

LABEL org.opencontainers.image.authors="techgiganet@gmail.com"
LABEL org.opencontainers.image.url="https://ntfy.sh/"
LABEL org.opencontainers.image.documentation="https://docs.ntfy.sh/"
LABEL org.opencontainers.image.source="https://github.com/subarudad/ntfy"
LABEL org.opencontainers.image.vendor="Bruce Nguyen"
LABEL org.opencontainers.image.licenses="Apache-2.0, GPL-2.0"
LABEL org.opencontainers.image.title="ntfy"
LABEL org.opencontainers.image.description="Send push notifications to your phone or desktop using PUT/POST"

RUN apk add --no-cache tzdata
COPY ntfy /usr/bin

EXPOSE 80/tcp
ENTRYPOINT ["ntfy"]

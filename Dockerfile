FROM debian:jessie
MAINTAINER yigal@publysher.nl

# Download and install hugo
ENV HUGO_VERSION 0.24.1
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.deb

ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} /tmp/hugo.deb
RUN dpkg -i /tmp/hugo.deb \
	&& rm /tmp/hugo.deb

WORKDIR /website

# By default, serve site
ENV HUGO_BASE_URL http://localhost:1313
ENV HUGO_APPEND_PORT false
ENV HUGO_BIND 0.0.0.0
ENV HUGO_PORT 1313
ENV HUGO_THEME beautifulhugo
CMD hugo server -b ${HUGO_BASE_URL} \
--theme=${HUGO_THEME} \
--port=${HUGO_PORT} \
--appendPort=${HUGO_APPEND_PORT} \
--bind=${HUGO_BIND}

FROM bats/bats:1.11.0

RUN \
    apk add --update --no-cache \
    curl \
    git \
    sudo \
    && \
    rm -rf /var/cache/apk/*

COPY install-dependencies.sh /tmp

RUN \
    sh /tmp/install-dependencies.sh

RUN \
    adduser -D vscode

USER vscode
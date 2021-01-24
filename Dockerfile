# Base Image - google/dart
FROM google/dart:2.10

LABEL maintainer="tkikuchi2000@gmail.com" version="0.2.0"


# MkDocs Material
RUN \
    apt update \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt install -y nodejs \
    && pub global activate webdev \
    && ln -s /root/.pub-cache/bin/webdev /usr/bin/ \
    && rm -rf /tmp/* /var/tmp/* /var/cache/distfiles/*



# Install Firebase CLI
RUN npm i -g firebase-tools --unsafe-perm


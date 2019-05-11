# Base Image - google/dart
FROM google/dart

LABEL maintainer="tkikuchi2000@gmail.com" version="0.1.0"


# MkDocs Material
RUN \
    apt update \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt install -y nodejs \
    && rm -rf /tmp/* /var/tmp/* /var/cache/distfiles/*



# Install Firebase CLI
RUN npm i -g firebase-tools 


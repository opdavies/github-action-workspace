FROM php:7.4-cli

RUN apt-get update -yqq \
  && apt-get install -yqq wget \
  && apt-get autoremove -y --purge \
  && rm -fr /var/lib/apt/lists/* \
  && wget https://github.com/my127/workspace/releases/download/0.1.3/ws \
  && chmod +x ws \
  && mv ws /usr/local/bin \
  && ws

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

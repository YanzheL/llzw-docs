FROM ruby

MAINTAINER Adrian Perez <adrian@adrianperez.org>

VOLUME /usr/src/app/source

EXPOSE 4567

RUN apt-get update \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN unset BUNDLE_PATH \
    && unset BUNDLE_BIN

ENV GEM_HOME="/usr/local/bundle"

ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

WORKDIR /usr/src/app

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
ARG JEKYLL_VERSION=3.8
FROM jekyll/jekyll:$JEKYLL_VERSION

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR.UTF-8


WORKDIR /usr/src/herveleclerc

COPY   [".", "/usr/src/herveleclerc/"]

# RUN  ["bundle", "update"]
RUN    ["jekyll", "build"]

CMD    ["bundle","exec", "jekyll", "serve","--host", "0.0.0.0"]

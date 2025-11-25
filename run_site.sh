#!/bin/sh
docker run --rm -it \
  --platform linux/amd64 \
  --entrypoint /bin/sh \
  -v "$PWD":/srv/jekyll \
  -p 4000:4000 \
  jekyll/jekyll:pages \
  -c "apk add --no-cache build-base && bundle install && bundle exec jekyll serve --config _config.yml --host 0.0.0.0 --force_polling --livereload --drafts"

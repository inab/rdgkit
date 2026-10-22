FROM ruby:3.2-alpine

RUN apk add --no-cache build-base gcc cmake git openssl-dev tzdata \
    && git config --global --add safe.directory /srv/jekyll

WORKDIR /srv/jekyll

# The repository ignores Gemfile.lock; use it when available locally.
COPY Gemfile Gemfile.lock* ./
RUN bundle install

COPY . .

EXPOSE 4000 35729

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--force_polling"]

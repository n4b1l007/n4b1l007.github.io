FROM ruby:3.1-alpine
LABEL maintainer="MD. Jafrul Sadek"

RUN apk add --no-cache build-base git nodejs npm

WORKDIR /site

COPY Gemfile ./
RUN bundle config set path '/gems' \
    && bundle install --jobs=4 --retry=3

COPY . .

EXPOSE 4000

ENV JEKYLL_ENV=development BUNDLE_PATH=/gems

CMD ["bundle","exec","jekyll","serve","--host","0.0.0.0","--livereload","--drafts"]

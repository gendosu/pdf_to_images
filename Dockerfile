FROM ruby:latest

RUN apt-get update \
  &&  apt-get install -y --force-yes \
  vim \
  imagemagick \
  poppler-utils \
  &&  apt-get clean \
  &&  rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile* /app

RUN bundle
FROM ruby

RUN apt-get update -qq && \
  apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs

RUN mkdir /billinho
WORKDIR /billinho
COPY Gemfile /billinho/Gemfile
COPY Gemfile.lock /billinho/Gemfile.lock
RUN bundle install
COPY . /billinho
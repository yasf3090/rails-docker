FROM ruby:3.2.2
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs
RUN mkdir /rails-docker
WORKDIR /rails-docker
COPY Gemfile /rails-docker/
COPY Gemfile.lock /rails-docker/
RUN bundle install
COPY . /rails-docker
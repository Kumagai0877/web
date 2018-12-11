FROM ruby:2.3.6
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /shokushoku
WORKDIR /shokushoku
COPY Gemfile /shokushoku/Gemfile
COPY Gemfile.lock /shokushoku/Gemfile.lock
RUN bundle install
COPY . /shokushoku_web

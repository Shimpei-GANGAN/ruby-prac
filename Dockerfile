FROM ruby:3.1.2-slim-bullseye

WORKDIR /app

# NOTE: pre-commit有効化のためgitをインストールする
RUN apt update && apt upgrade -y \
  && apt install -y git \
  && apt autoclean \
  && rm -rf /var/lib/apt/lists/*

COPY Gemfile .
COPY Gemfile.lock .

COPY . .
# NOTE: bundle installでエラーが起きるため、setup.shでインストールする
# RUN bundle install
RUN sh setup.sh
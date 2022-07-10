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
# NOTE: bundle installでエラーが起きるため、一旦コメントアウトする
# RUN bundle install
RUN gem install pre-commit rubocop rubocop-rspec
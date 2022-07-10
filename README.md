# ruby-prac

「**たのしい Ruby 第 6 版」**」をベースに練習する.

## Environment

- `Ruby: 3.1.2`
- `RuboCop`
- `RuboCop RSpec`
- `pre-commit`

## Usage

### Docke Compose 環境の場合

```sh
# NOTE: 以下のコマンドはDocker Compose v1の書き方です
$ docker-compose up -d --build && docker-compose exec ruby bash

# TODO: commit時にうまく実行されていないので要調査
# 初回はコンテナ内で以下を実行すること
# $ sh setup_pre-commit.sh
```

## Directory

TBD

#!/bin/sh -eu

# pre-commit の設定
pre-commit install
git config pre-commit.checks rubocop

# stagingされたファイルに対してのみ自動修正をかけるように変更
# TODO: ルールについては要検討
echo "# stagingされているファイルに対して自動修正をかける" >> .git/hooks/pre-commit
echo "git diff --name-only --cached | xargs bundle exec rubocop -a" >> .git/hooks/pre-commit
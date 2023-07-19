# docker-railsとは
Dockerを利用したRails7の開発環境を構築するリポジトリです。

# 前提
* [Docker Desktop](https://docs.docker.com/desktop/)のインストール

# 使用環境
* Ubuntu 22.04.2
* Docker version 24.0.2, build cb74dfc
* Docker Compose version v2.19.1

# 使い方
```terminal
# リポジトリのクローン
git clone git@github.com:yasf3090/rails-docker.git

# ディレクトリ移動
cd docker-rails

# Dockerイメージのビルド
docker-compose build

#DB作成
docker-compose run --rm web rails db:create

# DBマイグレーション
docker-compose run --rm web rails db:migrate RAILS_ENV=development

# Dockerコンテナの起動
docker-compose up

# Dockerコンテナの停止・削除
docker-compose down
```

# 参考文献
* [Dockerfile リファレンス](https://docs.docker.jp/engine/reference/builder.html)
* [Compose ファイル リファレンス](https://docs.docker.jp/reference/compose-file/toc.html)
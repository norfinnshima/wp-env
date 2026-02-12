#!/bin/bash

if ! docker info >/dev/null 2>&1; then
  echo "❌ Docker が起動していません"
  echo "👉 Docker Desktop を起動してください"
  exit 1
fi

echo "📁 theme ディレクトリ作成..."
mkdir -p theme

echo "🚀 wp-env 起動中..."
npx @wordpress/env start

echo "⏳ 起動待機..."
until npx @wordpress/env run cli wp core is-installed >/dev/null 2>&1; do
  sleep 2
done

echo "🚀 WordPress セットアップ開始..."
bash scripts/run.sh

echo "✅ セットアップ完了"
echo "👉 http://localhost:8888"
echo "ログイン：admin / password"

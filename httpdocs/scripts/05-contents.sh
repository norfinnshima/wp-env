#!/bin/bash

# デフォルト固定ページ処理
npx @wordpress/env run cli wp post delete $(npx @wordpress/env run cli wp post list --post_type=page --name=sample-page --field=ID) --force || true
npx @wordpress/env run cli wp post update $(npx @wordpress/env run cli wp post list --post_type=page --name=privacy-policy --field=ID) --post_status=publish || true

# 固定ページ作成
npx @wordpress/env run cli wp post create --post_type=page --post_title="会社概要" --post_name=about --post_status=publish
npx @wordpress/env run cli wp post create --post_type=page --post_title="お問い合わせ" --post_name=contact --post_status=publish

# サンプル投稿5件
for i in {1..5}
do
  npx @wordpress/env run cli wp post create --post_title="サンプル記事 $i" --post_status=publish --post_content="これはサンプル記事です。"
done

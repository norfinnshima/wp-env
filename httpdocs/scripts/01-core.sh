#!/bin/bash

# コアインストール
npx @wordpress/env run cli wp core install --url=http://localhost:8888 --title="Test Site" --admin_user=admin --admin_password=password --admin_email=test@example.com

# コア更新
npx @wordpress/env run cli wp core update

# 日本語
npx @wordpress/env run cli wp language core install ja --activate

# タイムゾーン
npx @wordpress/env run cli wp option update timezone_string Asia/Tokyo

# 日付形式
npx @wordpress/env run cli wp option update date_format "Y-m-d"

# adminカラー
npx @wordpress/env run cli wp user meta update admin admin_color ocean

# パーマリンク
npx @wordpress/env run cli wp rewrite structure '/%post_id%/' --hard

# インデックス禁止
npx @wordpress/env run cli wp option update blog_public 0

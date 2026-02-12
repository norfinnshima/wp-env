#!/bin/bash

# 使用しないテーマは削除して最新テーマを有効化
npx @wordpress/env run cli wp theme delete $(npx @wordpress/env run cli wp theme list --field=name) || true
npx @wordpress/env run cli wp theme install twentytwentyfive --activate

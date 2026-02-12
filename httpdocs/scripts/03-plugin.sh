#!/bin/bash

# 不要プラグイン削除
npx @wordpress/env run cli wp plugin delete hello akismet --quiet || true

# プラグインインストール
npx @wordpress/env run cli wp plugin install \
wp-multibyte-patch \
classic-editor \
custom-post-type-ui \
advanced-custom-fields \
contact-form-7 \
--activate

# プラグイン更新
npx @wordpress/env run cli wp plugin update --all

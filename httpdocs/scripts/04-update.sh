#!/bin/bash

# 翻訳更新
npx @wordpress/env run cli wp language core update
npx @wordpress/env run cli wp language plugin update --all
npx @wordpress/env run cli wp language theme update --all

# ダッシュボード整理
npx @wordpress/env run cli wp eval '
remove_meta_box("dashboard_activity","dashboard","normal");
remove_meta_box("dashboard_quick_press","dashboard","side");
remove_meta_box("dashboard_primary","dashboard","side");
'

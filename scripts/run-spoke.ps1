# run-start.ps1

# OpenSSL 互換性のため、レガシープロバイダを有効にする
$env:NODE_OPTIONS = "--openssl-legacy-provider"

# 必要な他の環境変数を設定
$env:NODE_TLS_REJECT_UNAUTHORIZED = "0"
$env:ROUTER_BASE_PATH = "/spoke"
$env:BASE_ASSETS_PATH = "https://localhost:9090/"
$env:HUBS_SERVER = "localhost:4000"
$env:RETICULUM_SERVER = "localhost:4000"

# npm start を実行
yarn start

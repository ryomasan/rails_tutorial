#!/bin/bash

export LDFLAGS="-L/opt/homebrew/opt/openssl@3.0/lib -L/opt/homebrew/opt/libyaml/lib -L/opt/homebrew/opt/readline/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3.0/include -I/opt/homebrew/opt/libyaml/include -I/opt/homebrew/opt/readline/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3.0/lib/pkgconfig:/opt/homebrew/opt/libyaml/lib/pkgconfig:/opt/homebrew/opt/readline/lib/pkgconfig"
export PATH="$HOME/.rbenv/shims:$PATH"

echo "環境変数が設定されました。これを使って Ruby をインストールしてください。"


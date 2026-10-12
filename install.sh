#!/usr/bin/env bash
# 一键安装 portrait-retouch 到 skills 目录（macOS / Linux）
# 用法（仓库根目录下）：  bash install.sh
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.config/agents/skills/portrait-retouch"
mkdir -p "$(dirname "$DEST")"
rm -rf "$DEST"

# 排除 .git 与安装/说明文件，只拷贝 skill 本体
cd "$SRC"
find . -maxdepth 1 -mindepth 1 \
  ! -name .git ! -name README.md ! -name install.ps1 ! -name install.sh \
  -exec cp -R {} "$DEST/" \;

echo "portrait-retouch installed to $DEST"
echo "重启客户端或新开一个会话后，上传人像照片并说'帮我P图'即可触发。"

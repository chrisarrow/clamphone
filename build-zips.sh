#!/bin/zsh
# Rebuilds press-kit/clamphone-press-kit.zip. Optionally copies a new promo clip in first:
#   ./build-zips.sh [path/to/clip.mp4]
set -e
K=${0:A:h}/press-kit
mkdir -p $K/video
if [[ -n "$1" ]]; then cp "$1" $K/video/clamphone-promo.mp4; echo "clip: $1"; fi
cd $K
rm -f clamphone-press-kit.zip
zip -qrX clamphone-press-kit.zip clamphone-fact-sheet.txt icon logo screenshots video -x '.*'
ls -lh clamphone-press-kit.zip

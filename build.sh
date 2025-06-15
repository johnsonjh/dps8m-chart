#!/usr/bin/env sh
# shellcheck disable=SC2015
# Copyright (c) 2025 Jeffrey H. Johnson
# SPDX-License-Identifier: MIT

command -v shellcheck > /dev/null 2>&1 && {
  printf '%s\n' "* shellcheck ..." 2> /dev/null || true
  shellcheck -o any,all build.sh
} || true

command -v reuse > /dev/null 2>&1 && {
  printf '%s\n' "* reuse ..." 2> /dev/null || true
  reuse lint -q || reuse lint
} || true

command -v npx > /dev/null 2>&1 && {
  printf '%s\n' "* prettier ..." 2> /dev/null || true
  npx prettier \
    --no-bracket-spacing \
    --bracket-same-line \
    --print-width 256 \
    --tab-width 4 \
    --write source.html
} || true

command -v minify > /dev/null 2>&1 && {
  # minify from https://github.com/tdewolff/minify.git
  printf '%s\n' "* minify ..." 2> /dev/null || true
  minify source.html > index.html
} || {
  printf '%s\n' "* cp -f source.html index.html" 2> /dev/null || true
  cp -f source.html index.html
}

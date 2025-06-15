#!/usr/bin/env sh
# Copyright (c) 2025 Jeffrey H. Johnson
# SPDX-License-Identifier: MIT
# shellcheck disable=SC2015
command -v minify >/dev/null 2>&1 && {
  # minify from https://github.com/tdewolff/minify.git
  printf '%s\n' "* minify source.html > index.html" 2> /dev/null || true
  minify source.html > index.html
} || {
  printf '%s\n' "* cp -f source.html index.html" 2> /dev/null || true
  cp -f source.html index.html
}

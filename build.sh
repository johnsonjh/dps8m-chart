#!/usr/bin/env sh
# Copyright (c) 2025 Jeffrey H. Johnson
# SPDX-License-Identifier: MIT
# shellcheck disable=SC2015
command -v minify >/dev/null 2>&1 && {
  # minify from https://github.com/tdewolff/minify.git
  minify source.html >index.html
} || cp -f source.html index.html

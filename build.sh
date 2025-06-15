#!/usr/bin/env sh
# minify from https://github.com/tdewolff/minify.git
# shellcheck disable=SC2015
command -v minify >/dev/null 2>&1 && {
  minify source.html >index.html
} || cp -f source.html index.html

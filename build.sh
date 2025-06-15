#!/usr/bin/env sh
command -v minify >/dev/null 2>&1 && {
  minify source.html >index.html
} || cp -f source.html index.html

#!/bin/sh
# Rebuild kerri-sharp-cv.pdf from index.html, without browser headers and footers.
# Run this after any change to index.html. Set CHROME to use a different Chrome binary;
# any arguments are passed on to Chrome.
cd "$(dirname "$0")" || exit 1
"${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}" \
  --headless --disable-gpu --no-pdf-header-footer "$@" \
  --print-to-pdf=kerri-sharp-cv.pdf "file://$PWD/index.html"

#!/usr/bin/env bash
set -euo pipefail

rm -rf static/fonts static/katex
mkdir -p static/fonts static/katex/fonts

cp node_modules/@fontsource-variable/inter/files/inter-latin-standard-normal.woff2 \
   node_modules/@fontsource-variable/inter/files/inter-latin-standard-italic.woff2 \
   node_modules/@fontsource-variable/jetbrains-mono/files/jetbrains-mono-latin-wght-normal.woff2 \
   static/fonts/

cp node_modules/katex/dist/katex.min.css \
   node_modules/katex/dist/katex.min.js \
   node_modules/katex/dist/contrib/auto-render.min.js \
   static/katex/

cp node_modules/katex/dist/fonts/*.woff2 static/katex/fonts/

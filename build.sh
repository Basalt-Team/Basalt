#!/bin/bash
set -eu

# For use in the GitHub workflow process.
# # Run in the root of the repository to produce a dist/ directory.

# Create directory structure
mkdir -p dist

# Copy static files
cp -a fonts dist
cp images/* misc/* dist

# Merge and minify CSS files
cat p?-*.css > dist/basalt-bedrock.css
npm run minify:bedrock

cp normalize.css dist/normalize.css
npm run minify:normalize

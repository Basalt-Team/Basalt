#!/bin/bash
set -eu

# For use in the GitHub workflow process.
# # Run in the root of the repository to produce a dist/ directory.

# Create directory structure
mkdir -p dist

# Copy fonts and images
cp -a fonts dist
cp images/* dist

# Merge and minify CSS files
cat p?-*.css > dist/basalt-bedrock.css
npm run minify dist/basalt-bedrock.css > dist/basalt-bedrock-min.css

cp normalize.css dist/normalize.css
npm run minify normalize.css > dist/normalize-min.css

#!/bin/bash

# First delete everything in prod
echo "WARNING! This will delete everything in prod/ directory. Press enter to continue."
read
rm -rf prod/

# Now setup prod directory
echo "Setting up prod/ directory"
mkdir prod
mkdir prod/js
mkdir prod/img
mkdir prod/css
mkdir prod/vendor
mkdir prod/vendor/jquery
mkdir prod/vendor/bootstrap
mkdir prod/vendor/bootstrap/js
mkdir prod/vendor/bootstrap/css
mkdir prod/vendor/font-awesome
mkdir prod/vendor/font-awesome/css
mkdir prod/vendor/font-awesome/fonts

# Copy files
echo "Copying files to prod/"

# HTML
cp index.html prod/index.html

# JS
cp js/freelancer.min.js prod/js/freelancer.min.js
cp vendor/jquery/jquery.min.js prod/vendor/jquery/jquery.min.js
cp vendor/bootstrap/js/bootstrap.min.js prod/vendor/bootstrap/js/bootstrap.min.js

# CSS
cp css/freelancer.min.css prod/css/freelancer.min.css
cp vendor/bootstrap/css/bootstrap.min.css prod/vendor/bootstrap/css/bootstrap.min.css

# Images
cp -r img prod/

# Fonts
cp vendor/font-awesome/css/font-awesome.min.css prod/vendor/font-awesome/css/font-awesome.min.css
cp vendor/font-awesome/fonts/fontawesome-webfont.woff prod/vendor/font-awesome/fonts/fontawesome-webfont.woff
cp vendor/font-awesome/fonts/fontawesome-webfont.woff2 prod/vendor/font-awesome/fonts/fontawesome-webfont.woff2

# Misc
cp -r misc_include_prod/. prod/

echo "Success"

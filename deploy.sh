#! /bin/bash --login

set -e

source ~/.rvm/scripts/rvm

rm -fr _site

rvm use 2.1.0
bundle install
jekyll build

/home/ubuntu/bin/s3-jekyll-deploy/s3-jekyll-deploy www.vidageek.net

curl "http://feedburner.google.com/fb/a/pingSubmit?bloglink=http%3A%2F%2Fwww.vidageek.net"

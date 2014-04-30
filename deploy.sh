#! /bin/bash --login

set -e

source ~/.rvm/scripts/rvm

rm -fr _site

rvm use 2.1.0
bundle install
jekyll build

cd _site

aws --size-only --acl "public-read" s3 sync . s3://www.vidageek.net/

curl "http://feedburner.google.com/fb/a/pingSubmit?bloglink=http%3A%2F%2Fwww.vidageek.net"

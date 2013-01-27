#! /bin/bash

jekyll || /var/lib/gems/1.8/bin/jekyll

/home/ubuntu/bin/s3-jekyll-deploy/s3-jekyll-deploy www.vidageek.net

curl "http://feedburner.google.com/fb/a/pingSubmit?bloglink=http%3A%2F%2Fwww.vidageek.net"

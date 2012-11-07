#! /bin/bash

jekyll || /var/lib/gems/1.8/bin/jekyll

DOMAIN=www.vidageek.net

cd _site;

typeFor(){
	TYPE=`echo $1 | sed -E "s/.+\.([^$]+)$/\1/"`
	CONTENT_TYPE="text/html"
	if [ $TYPE == "txt" ]; then CONTENT_TYPE="text/plain"; fi;
	if [ $TYPE == "xml" ]; then CONTENT_TYPE="application/xml"; fi;
	if [ $TYPE == "css" ]; then CONTENT_TYPE="text/css"; fi;
	if [ $TYPE == "js" ]; then CONTENT_TYPE="text/javascript"; fi;
	if [ $TYPE == "png" ]; then CONTENT_TYPE="image/png"; fi;
	if [ $TYPE == "PNG" ]; then CONTENT_TYPE="image/png"; fi;
	if [ $TYPE == "jpg" ]; then CONTENT_TYPE="image/jpg"; fi;
	if [ $TYPE == "JPG" ]; then CONTENT_TYPE="image/jpg"; fi;
	if [ $TYPE == "gif" ]; then CONTENT_TYPE="image/gif"; fi;
	if [ $TYPE == "ico" ]; then CONTENT_TYPE="image/x-icon"; fi;
	if [ $TYPE == "zip" ]; then CONTENT_TYPE="application/zip"; fi;
	if [ $TYPE == "gz" ]; then CONTENT_TYPE="application/gzip"; fi;
	if [ $TYPE == "pdf" ]; then CONTENT_TYPE="application/pdf"; fi;
}

for X in `find . -type f | sed -E "s/\.\///"`; do 
	echo "Deploying $X";
	typeFor $X
	~/bin/aws/aws put "x-amz-acl: public-read" "Content-Type: $CONTENT_TYPE" www.vidageek.net $X;
done;

curl "http://feedburner.google.com/fb/a/pingSubmit?bloglink=http%3A%2F%2Fwww.vidageek.net"

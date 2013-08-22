#! /bin/bash 

( [ ! -d "~/blog-vidageek" ] ) && git clone git@github.com:vidageek/blog.git ~/blog-vidageek

cd ~/blog-vidageek

git pull origin master

POST=`ls _stash/ | head -n 1`;

test -z "$POST" && exit 1

TODAY=`date +"%Y-%m-%d"`

NOME_FINAL=$TODAY`echo $POST | sed -E "s/^[0-9]+//"`

mv _stash/$POST _posts/$NOME_FINAL

git add _posts
git commit -a -m "movendo _stash/$POST _posts/$NOME_FINAL"
git push origin master

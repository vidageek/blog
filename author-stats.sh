#! /bin/bash 

grep "author:" _posts/* _stash/* | grep -v "_stash/new" | cut -d ":" -f 3 | sort | uniq -c | sort

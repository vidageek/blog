#! /bin/bash 

grep -ri "author:" _posts | cut -d ":" -f 3 | sort | uniq -c | sort

#! /bin/bash

STASHED=`ls _stash/ | grep "^[0-9]" | wc -l`

let "WEEKS=$STASHED/2"

echo $WEEKS

test ! $WEEKS -lt 2

#!/bin/bash

VOTES=$(cd /usr/local/bin && su mnv -c 'vivo-cli gobject list')

checkVotes(){

echo "$VOTES"

}

checkVotes

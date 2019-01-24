#!/bin/bash

VOTES=$(cd /usr/local/bin && su mnv -c 'vivo-cli gobject list')

checkVotes(){

echo "Risposta ricevuta: $VOTES"

}

checkVotes

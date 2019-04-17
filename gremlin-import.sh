#!/bin/bash

for input in "$@"; do
	path=$( pwd )
	input=$path"/"$input
	
	cd ~/Development/apache-tinkerpop-gremlin-console-3.4.1/bin/
	./gremlin.sh <<eofgremlin 
	
	:remote connect tinkerpop.server conf/remote.yaml
	:remote console
	:load $input
eofgremlin
done

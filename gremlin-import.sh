#!/usr/bin/env bash

{
	echo :remote connect tinkerpop.server conf/remote.yaml
	echo :remote console
	for input; do
		echo :load $PWD/$input
	done
} | gremlin.sh -Q

#!/usr/bin/env bash

set -eu

if ! yq --version > /dev/null || yq --version | grep -q 'version [^3]'; then
	echo Please: brew install yq v3.x >&2
	exit 2
fi

cd code-list-scripts
max_f_len=20

for yaml_file in *.yml *.yaml; do
	test -f $yaml_file || continue

	for f in $(yq r -j $yaml_file 'imports[*].files.*'); do
		while [[ $f != ${f#- } ]]; do f=${f#- }; done

		test -f $f && continue

		# assert: file is missing

		(( ${#yaml_file} > max_f_len )) && max_f_len=${#yaml_file}

		# note if the file exists in cypher/ rather than migration-scripts/
		maybe=${f/migration-scripts/cypher}
		if [[ ! -f $maybe ]]; then
			maybe=
		fi

		printf "%-*s no file %20s%s\n" $max_f_len $yaml_file "'$f'" "${maybe:+	consider '$maybe'}"

	done
done

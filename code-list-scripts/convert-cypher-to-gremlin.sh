#!/usr/local/bin/bash

# Convert any number of geography code list cypher files to equivalent gremiln files

kv_pattern='([a-zA-Z0-9_\-\"`'"'"']+) *: *('"'"'[^'"'"']+'"'"'|\"[^\"]+\")[, ]*'

for input in "$@"; do
	
	output=$( echo "$input" | cut -d\/ -f2 | cut -d. -f1 )
	output="gremlin/"$output".grm"
	> $output
	
	echo "Input file: " $input
	echo "Writing to: " $output	

	declare -A kv 
	code_list=""

	while read -r line; do

		if [[ $line != "MATCH"* ]]; then			
			str=$line
			if [[ $str =~ ^CREATE\ +\([^{]+{\ * ]]; then
			        str=${str#${BASH_REMATCH[0]}}
		
				#get KV-pairs of properties into map
			        while [[ $str =~ $kv_pattern ]]; do
			                k=${BASH_REMATCH[1]}
			                v=${BASH_REMATCH[2]}
			                str=${str#${BASH_REMATCH[0]}}
			                v=${v%?}; v=${v#?} # remove quoting (first and last chars)
			
					kv[${k}]=${v}
			        done

				#get code list ID
				code_list_regex='^CREATE[ ]*\(.+_code_list_([^`]+).*'
				if [[ "${line}" =~ $code_list_regex ]]; then
					code_list=${BASH_REMATCH[1]}
				fi

				#add code list vertex to output file
				echo "g.V().hasLabel('_code_list_"$code_list"').has('edition', '"${kv[edition]}"').fold().coalesce(unfold()," >> $output
				echo "	addV('_code_list_"$code_list"::_code_list')." >> $output
				
				len=${#kv[@]}
				count=1

				#add properties to vertex
				for prop in "${!kv[@]}"
				do
					#dont put '.' on end of last property line
					if [[ ${count} -lt ${len} ]]; then
						echo "		property(single, '"${prop}"', '"${kv[$prop]}"')." >> $output
					else
						echo "		property(single, '"${prop}"', '"${kv[$prop]}"')" >> $output
					fi
					count=$(( count + 1 ))
				done
				
				echo "	).next()" >> $output
				echo "" >> $output
			fi
			continue
		fi
	
		#get code and label from cypher statement
		if [[ "${line}" =~ ^MATCH\ +\([^\)]+\)[^{]+\ * ]]; then
			line=${line#${BASH_REMATCH[0]}}

			declare -a code
			code_label_pattern="{\ *[^}]+:[\"|\']([^}]+)[\"|\']\ *}"

			while [[ $line =~ $code_label_pattern ]]; do
				v=${BASH_REMATCH[1]}
				echo "append: " $v
				code[${#code[@]}]=${v}

				v2=${BASH_REMATCH[0]}
				v2=${v2//[\[\]]/?}
				line=${line/$v2}
			done
		fi
		
		#add code vertex
		echo "g.V().hasLabel('_code_"$code_list"').has('value', '"${code[0]}"').fold().coalesce(unfold()," >> $output
		echo "	addV('_code::_code_"$code_list"').property(single, 'value', '"${code[0]}"')).next()" >> $output
		echo "" >> $output

		#add code edge
		echo "g.V().hasLabel('_code_"$code_list"').has('value', '"${code[0]}"').outE().fold().coalesce(unfold()," >> $output
		echo "	g.V().hasLabel('_code_"$code_list"').has('value', '"${code[0]}"')." >> $output
		echo "		addE('usedBy').to(" >> $output
		echo "			g.V().hasLabel('_code_list_"$code_list"').has('edition', '"${kv[edition]}"')" >> $output
		echo "		).property(single, 'label', '"${code[1]}"'))." >> $output
		echo "		next()" >> $output
		echo "" >> $output



		code=()
	done < $input	
	code_list_id=""
done

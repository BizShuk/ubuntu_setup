#!/bin/bash

generate_passwd() {
    local l=$1
    [ "$l" == "" ] && l=16
    tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}



get_script-path () {
	# $0 => first command/script
	# dirname $0 => folder contain that script
	# cd -- <path> => move to path from -- ($HOME)
	# pwd -P => print out pwd with physical directory, without any symbolic link

	if [ "$DEBUG_RC" == "true" ]; then
		(
			echo -e "${FUNCNAME[*]} script: $0"
			echo -e "${FUNCNAME[*]} dir: $(dirname $0)"
			echo -e "${FUNCNAME[*]} path: $(pwd)"
		) 1>&2
	fi



	SCRIPTPATH="$(cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
	echo $SCRIPTPATH
}


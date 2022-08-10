#!/bin/bash


if command -v python3 > /dev/null ; then
    alias python-config='python3-config'
else
    alias python-config='python2.7-config'
fi

alias py-config='python-config'


get_python-config-dir () {
	if ! command -v python-config > /dev/null; then
	    echo python config dir is not existed
	    return 127
	fi

	python_config_dir=`python-config --ldflags |awk '{print $1}'`
	python_config_dir=${python_config_dir:2}

	echo "${python_config_dir}"
}
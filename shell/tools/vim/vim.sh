#!/bin/bash

source ../bash_function.sh
source ../alias/python-config.sh

VIM_VERSION="v7.4.1692"
VIM_DISTRIBUTION="${VIM_VERSION}"

sudo apt-get install -y ncurses-dev # terminal library

python_config_dir=$(get_python-config-dir)

tmpdir=`mktemp -d`
pushd "$tmpdir"
    wget https://github.com/vim/vim/archive/${VIM_VERSION}.tar.gz
    tar zxf ${VIM_VERSION}.tar.gz
    cd ${VIM_DISTRIBUTION}
    ./configure --enable-pythoninterp \
        --with-python-config-dir=${python_config_dir} \
        --enable-perlinterp \
        --with-features=huge \
        --enable-cscope \
        --prefix=/usr
    make
    sudo make install
popd
# --enable-python3interp
# --with-python3-config-dir
rm -rf ${tmpdir}


# for ctag
. ./ctags_setup.sh

git submodule init
git submodule update

echo check :py print("yes") and edit tmp.c with for snippets
#echo check :py3 print("yes") and edit tmp.c with for snippets


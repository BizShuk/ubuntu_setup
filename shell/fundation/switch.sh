#!/usr/bin/env bash

MODE="update_test"
case ${MODE} in
    update*)
        MODE="update"
    ;;
    *)
        MODE="server"
    ;;
esac
echo ${MODE}
#!/bin/bash

POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -m|--mainnet)
    MAINNET="$2"
    shift # past argument
    shift # past value
    ;;
    -p|--privnet)
    PRIVNET="$2"
    shift # past argument
    shift # past value
    ;;
    --coznet)
    COZNET="$2"
    shift # past argument
    shift # past value
    ;;
    -c|--config)
    CONFIG="$2"
    shift # past argument
    shift # past value
    ;;
    -t|--set-default-theme)
    THEME="$2"
    shift # past argument
    shift # past value
    ;;
    --version)
    VERSION="$2"
    shift # past argument
    shift # past value
    ;;
    --bootstrap)
    BOOTSTRAP="$2"
    shift # past argument
    ;;
    *)    # unknown option
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

rm -rf /neo-python/Chains/privatenet
if [ ! -d "/neo-python/Chains/SC234" ]; then
  python3 /neo-python/bootstrap.py --skipconfirm
fi

screen python3 /neo-python/prompt.py

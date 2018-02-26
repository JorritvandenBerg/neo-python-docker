#!/bin/bash

rm -rf /neo-python/Chains/privatenet
if [ ! -d "/neo-python/Chains/SC234" ]; then
  python3 /neo-python/bootstrap.py --skipconfirm
fi

screen python3 /neo-python/prompt.py

#!/usr/bin/env bash

set -e

export SHELL=/bin/bash

python3 -m venv .venv && \
source .venv/bin/activate && \
pip install -r /requirements.txt && \
jupyter lab --ip 0.0.0.0 --port 8888

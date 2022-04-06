#!/usr/bin/env bash

set -e

export SHELL=/bin/bash

source .venv/bin/activate && \
jupyter lab --ip 0.0.0.0 --port 8888

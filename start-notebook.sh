#!/usr/bin/env bash

set -e

export SHELL=/bin/bash

source .venv/bin/activate && \
jupyter lab

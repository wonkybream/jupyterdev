#!/usr/bin/env bash

set -e

project=$1

if [ -z "$project" ];
then
  echo "usage: ./add-project \"myproject\"";
  exit 1
fi

mkdir "$project"
cd "$project"

python3 -m venv .venv
source .venv/bin/activate
pip install ipykernel
python -m ipykernel install --user --name "$project" --display-name "$project"
echo ".venv/" > .gitignore

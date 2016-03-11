#!/bin/bash
set -e  # If occur any error, exit

export CI=$(dirname $0)
cd $CI/..
virtualenv -p `which python3` venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
pip install -r requirements-test.txt
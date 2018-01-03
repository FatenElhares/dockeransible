#!/bin/bash

#Activate env
. /appenv/bin/activate

# Install requirements
pip install -r requirements_test.txt

exec $@

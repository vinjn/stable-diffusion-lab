#!/bin/bash

pushd fooocus
source venv/bin/activate
# @REM start "" /B http://localhost:7860/
python entry_with_update.py --listen
popd
#!/bin/bash

# make this file executable
# chmod 755 bottoms-up.sh

brew remove --force $(brew list --formula)
brew remove --force $(brew list --casks)

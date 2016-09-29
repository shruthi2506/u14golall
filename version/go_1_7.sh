#!/bin/bash

#set the source path of gvm. $HOME points to '/root'
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm

# Install Go 1.7
echo "================= Install Go 1.7 ==================="
gvm install go1.7 --prefer-binary && gvm use go1.7 && go install -a -race std && go get -u github.com/tools/godep

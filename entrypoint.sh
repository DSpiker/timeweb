#!/bin/bash

git config --global user.name "$GITHUB_USER"
git config --global user.email "$GITHUB_EMAIL"

if [ ! -d "/home/developer/timeweb" ]; then
  git clone https://$GITHUB_TOKEN@github.com/DSpiker/timeweb /home/developer/timeweb
fi

exec bash


#!/bin/bash

for k in $(git branch | sed /\*/d); do 
  if [ -z "$(git log -1 --before='1 month ago' -s $k)" ]; then
    git branch -D $k
  fi
done
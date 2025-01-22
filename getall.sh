#!/bin/bash

while read -r id; do

  curl --output artifact-$id.zip -L \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $(cat ~/token.gh)" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    https://api.github.com/repos/enguerra-n/graphes/actions/artifacts/$id/zip 
  yes | unzip -qo artifact-$id.zip 

done < liste-id.txt

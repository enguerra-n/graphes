tocken=$(cat ~/token.gh)
#echo $tocken
curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $tocken" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/enguerra-n/graphes/actions/artifacts > gh-artifacts.json


curl --output artifact.zip -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $tocken" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/enguerra-n/graphes/actions/artifacts/2461308391/zip

unzip artifact.zip
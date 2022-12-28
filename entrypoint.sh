#!/bin/sh -v

echo "Executing command..."
#printenv GITHUB_WORKSPACE
printf '%d args:' "$#"
printf " '%s'" "$@"
printf '\n'
# echo "curr dir"
# pwd
# ls
cdk version
#sh -c "$*"
#exit_code=$?
#echo "Done."
#exit $exit_code
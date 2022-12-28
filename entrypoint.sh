#!/bin/sh -v

echo "Executing command..."
cd ${GITHUB_WORKSPACE}/${INPUT_WORKING_DIR}
#printenv GITHUB_WORKSPACE
#printf '%d args:' "$#"
#printf " '%s'" "$@"
#printf '\n'
# echo "curr dir"
# pwd
# ls
cdk version
sh -c "$*"
exit_code=$?
echo "Done."
exit $exit_code
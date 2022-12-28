#!/bin/sh -v

echo "Executing command..."
printenv GITHUB_WORKSPACE
ls
sh -c "$*"
exit_code=$?

echo "Done."
exit $exit_code

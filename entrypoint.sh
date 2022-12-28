#!/bin/sh -v

echo "Executing command..."
echo ls
sh -c "$*"
exit_code=$?

echo "Done."
exit $exit_code

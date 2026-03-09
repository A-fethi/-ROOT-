#!/bin/bash
cat -e > show-info.sh <<EOF
echo "The current directory is: \$PWD"
echo "The default paths are: \$PATH"
echo "The current user is: \$USERNAME"
EOF

#!/bin/bash

if [ "$1" == "" ]
then
    echo "Usage: $0 <path to testsuites>"
    exit 1
fi

echo "Copying files"
mkdir -p tests
find "$1" -iname '*crash*' -exec cp {} tests \;

cnt=$(ls -1 tests | wc -l)
echo "Generating testpage.js for $cnt files..."
echo 'testfiles = [' > testpages.js
find tests -type f | sed 's/^/"/; s/$/",/;' >> testpages.js
cat <<EOF >> testpages.js
"data:text/html;charset=utf-8;base64,PGgxPkZpbmlzaGVkITwvaDE+"
];
EOF

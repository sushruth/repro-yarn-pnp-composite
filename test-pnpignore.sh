
#!/bin/sh

RESULT=`sed -e 's|$PWD|'$PWD'|g' < tsserver-pnpignore.input | yarn tsserver | grep quickinfo | jq -r '.body.displayString'`

if [ "$RESULT" = "module \"$PWD/nm-packages/nm-app/node_modules/@types/lodash/index\"" ]; then
  echo "PASS";
else
  echo "FAIL";
  exit 1
fi

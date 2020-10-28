
#!/bin/sh

RESULT=`sed -e 's|$PWD|'$PWD'|g' < tsserver.input | yarn tsserver | grep quickinfo | jq -r '.body.displayString'`

if [ "$RESULT" = "any" ]; then
  echo "FAIL";
  exit 1
else
  echo "PASS";
fi

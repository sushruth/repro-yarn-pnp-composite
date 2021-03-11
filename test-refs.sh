
#!/bin/sh

RESULT=`sed -e 's|$PWD|'$PWD'|g' < tsserver-refs.input | yarn tsserver | grep quickinfo | jq -r '.body.displayString'`

if [ "$RESULT" = "type Check = \"shared foo\" | \"shared bar\" | \"lib foo\"" ]; then
  echo "PASS";
else
  echo "FAIL";
  exit 1
fi

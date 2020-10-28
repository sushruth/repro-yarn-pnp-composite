
#!/bin/sh

RESULT=`sed -e 's|$PWD|'$PWD'|g' < tsserver.input | yarn tsserver | grep quickinfo | jq -r '.body.displayString'`

if [ "$RESULT" = "(method) Foo.helloWorld(): \"hello world\"" ]; then
  echo "PASS";
else
  echo "FAIL";
  exit 1
fi

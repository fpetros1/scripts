#!/usr/bin/env dash

TARGET="$1"

if [ "$(echo $TARGET | grep -E ".+/$")" ]; then
	mkdir -p "$TARGET"
else
	DIRECTORY=$(dirname "$TARGET")
	mkdir -p "$DIRECTORY"
	touch "$TARGET"
fi



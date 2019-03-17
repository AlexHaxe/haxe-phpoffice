#!/bin/bash -e

rm -f phpoffice.zip
zip -9 -r -q phpoffice.zip src haxelib.json hxformat.json README.md CHANGES.md LICENSE

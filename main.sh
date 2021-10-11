#!/usr/bin/env bash

set -eu
set -o pipefail

if terraform fmt -check -recursive > /dev/null 2>&1; then
	exit 0
fi

tempfile=$(mktemp)
github-comment exec -- terraform fmt -recursive | sed "s|^|$WORKING_DIR/|" > "$tempfile"
# shellcheck disable=SC2046
ghcp commit -r "$GITHUB_REPOSITORY" -b "$GITHUB_HEAD_REF" \
	-m "style: terraform fmt -recursive" \
	-C "$ROOT_DIR" $(cat "$tempfile") \
	--token "$GITHUB_APP_TOKEN"
rm "$tempfile"
exit 1

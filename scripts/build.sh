#!/usr/bin/env bash
set -exuo pipefail

cd "$( dirname "${BASH_SOURCE[0]}" )/.."
source .envrc

GOOS=windows go build -ldflags="-s -w" -o bin/supply.exe hwc-cors/supply/cli
GOOS=windows go build -ldflags="-s -w" -o bin/finalize.exe hwc-cors/finalize/cli

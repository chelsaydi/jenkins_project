#!/bin/sh

set -eu

DEPLOY_DIR="${DEPLOY_DIR:-deploy}"

mkdir -p "$DEPLOY_DIR"
cp app.py "$DEPLOY_DIR/app.py"
printf 'Deployment complete: %s/app.py\n' "$DEPLOY_DIR"

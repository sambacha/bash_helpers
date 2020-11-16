#!/usr/bin/env bash

echo "==> Running Shellcheck"
if shellcheck verify-all.sh; then
    echo "Shellcheck exited without errors."
fi

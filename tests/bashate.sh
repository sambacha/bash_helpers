#!/usr/bin/env bash

echo "==> Running Bashate"
if bashate verify-descriptions.sh; then
    echo "Bashate exited without errors."
fi


#!/bin/bash

# Check EMQX Connection Status
EMQX_STATUS=$(curl -s http://emqx-status-endpoint)
if [[ "$EMQX_STATUS" != "OK" ]]; then
  echo "EMQX Connection Failed"
  exit 1
fi

# Verify In-Memory Configurations
IIFL_STATUS=$(curl -s http://iifl-symbol-map-endpoint)
if [[ "$IIFL_STATUS" != "OK" ]]; then
  echo "IIFL Symbol Map Verification Failed"
  exit 1
fi

echo "Post Release Checks Passed"

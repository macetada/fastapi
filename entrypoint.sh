#!/bin/sh

set -e

CPU_COUNT=$(getconf _NPROCESSORS_ONLN)

uvicorn main:app \
  --workers "${CPU_COUNT}" \
  --loop uvloop \
  --http httptools \
  --limit-concurrency 1000000 \
  --limit-max-requests 1000000 \
  --backlog 10000 \
  --timeout-keep-alive 65 \
  --no-access-log \
  --host 0.0.0.0 \
  --port 80

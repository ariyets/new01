#!/usr/bin/env bash
set -euo pipefail
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <private-s3-bucket-name>" >&2
  exit 64
fi
aws s3 sync "$(cd "$(dirname "$0")/../site" && pwd)" "s3://$1/site/" --delete
echo "Uploaded versioned backup to s3://$1/site/"

#!/usr/bin/env bash
# Build a clean archive that can be uploaded directly to Google Classroom.
set -euo pipefail

project_root="$(cd "$(dirname "$0")/.." && pwd)"
archive_name="${1:-skyward-capstone-project.zip}"
archive_path="$project_root/$archive_name"

if [[ "$archive_name" = */* ]]; then
  echo "Pass a file name only; the archive is written to the project root." >&2
  exit 64
fi

rm -f "$archive_path"
(
  cd "$project_root"
  zip -qr "$archive_path" . \
    -x '.git/*' \
    -x '.terraform/*' \
    -x '*.tfstate' \
    -x '*.tfstate.*' \
    -x 'terraform.tfvars' \
    -x '*.zip' \
    -x '.DS_Store'
)

echo "Created $archive_path"

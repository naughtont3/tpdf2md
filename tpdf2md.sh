#!/usr/bin/env bash
#
# Wrapper that runs tpdf2md using its venv's Python, so callers don't need
# to source venv/bin/activate first.

set -euo pipefail

# XXX: Manually set path to script here
SCRIPT_DIR="/Users/3t4/local/pdf2md/tpdf2md"
VENV_PYTHON="$SCRIPT_DIR/venv/bin/python3"

if [[ ! -x "$VENV_PYTHON" ]]; then
    echo "Error: venv not found at $SCRIPT_DIR/venv. Run:" >&2
    echo "  python3 -m venv venv && venv/bin/pip install -r requirements.txt" >&2
    exit 1
fi

exec "$VENV_PYTHON" "$SCRIPT_DIR/tpdf2md" "$@"

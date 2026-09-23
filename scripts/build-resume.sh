#!/usr/bin/env bash
# Regenerates resume.pdf from resume.html using headless Chrome.
# Usage:  bash scripts/build-resume.sh
set -euo pipefail
cd "$(dirname "$0")/.."

CHROME=""
for p in \
  "/c/Program Files/Google/Chrome/Application/chrome.exe" \
  "/c/Program Files (x86)/Google/Chrome/Application/chrome.exe" \
  "$LOCALAPPDATA/Google/Chrome/Application/chrome.exe" \
  "/usr/bin/google-chrome" "/usr/bin/chromium-browser" "/usr/bin/chromium"; do
  if [ -n "$p" ] && [ -f "$p" ]; then CHROME="$p"; break; fi
done

if [ -z "$CHROME" ]; then
  echo "ERROR: Chrome/Chromium not found. Install Chrome or edit the paths in this script." >&2
  exit 1
fi

WINPATH=$(pwd -W 2>/dev/null || pwd)
echo "Using browser: $CHROME"
echo "Generating resume.pdf ..."
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$WINPATH/resume.pdf" "file:///$WINPATH/resume.html" 2>/dev/null

file resume.pdf
echo "Done. Review the PDF, then: git add resume.pdf && git commit -m 'Update resume' && git push"

#!/usr/bin/env bash
# Paid Media & Marketing Skills for Claude — installer (macOS/Linux/Git Bash)
#
# Usage (run from inside the cloned repo):
#   ./install.sh                     install all 98 skills globally      (~/.claude/skills)
#   ./install.sh --project           install all 98 skills into this project only  (./.claude/skills)
#   ./install.sh --domain=meta-ads   install only one domain
#   ./install.sh --list              list installable domain names and exit
#   ./install.sh --dry-run           show what would be installed without copying anything
#   ./install.sh --help              show this message
#
# Domains: google-ads, meta-ads, linkedin-ads, tiktok-ads, paid-media, creative

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_SRC="$SCRIPT_DIR/skills"

TARGET="$HOME/.claude/skills"
DOMAIN="all"
DRY_RUN=false

for arg in "$@"; do
  case "$arg" in
    --project) TARGET="./.claude/skills" ;;
    --domain=*) DOMAIN="${arg#--domain=}" ;;
    --dry-run) DRY_RUN=true ;;
    --list)
      echo "Available domains: all google-ads meta-ads linkedin-ads tiktok-ads paid-media creative"
      exit 0
      ;;
    --help|-h)
      tail -n +2 "$0" | grep '^#' | sed 's/^# \{0,1\}//'
      exit 0
      ;;
    *)
      echo "Unknown option: $arg (try --help)" >&2
      exit 1
      ;;
  esac
done

if [ ! -d "$SKILLS_SRC" ]; then
  echo "Error: couldn't find a skills/ folder next to this script." >&2
  echo "Run this from inside the cloned repo, e.g.: ./install.sh" >&2
  exit 1
fi

case "$DOMAIN" in
  all)          patterns=("*") ;;
  google-ads)   patterns=("google-ads*" "google-analytics-ga4" "google-search-console" "google-tag-manager" "google-business-profile" "looker-studio-reporting" "youtube-organic-growth" "google-workspace") ;;
  meta-ads)     patterns=("meta-ads*" "instagram-organic-growth") ;;
  linkedin-ads) patterns=("linkedin-ads*" "linkedin-organic-growth") ;;
  tiktok-ads)   patterns=("tiktok-ads*" "tiktok-shop-organic") ;;
  paid-media)   patterns=("paid-media-*") ;;
  creative)     patterns=("ad-creative-intelligence" "ad-copywriting-frameworks" "creative-brief-generator" "creative-testing-framework" "creative-performance-analysis" "creative-fatigue-management" "ai-creative-generation" "ecommerce-creative-system" "brand-voice-ad-adaptation") ;;
  *)
    echo "Unknown domain: $DOMAIN" >&2
    echo "Available domains: all google-ads meta-ads linkedin-ads tiktok-ads paid-media creative" >&2
    exit 1
    ;;
esac

$DRY_RUN || mkdir -p "$TARGET"

count=0
for pattern in "${patterns[@]}"; do
  for dir in "$SKILLS_SRC"/$pattern/; do
    [ -d "$dir" ] || continue
    name="$(basename "$dir")"
    if $DRY_RUN; then
      echo "would install: $name"
    else
      cp -r "$dir" "$TARGET/"
    fi
    count=$((count + 1))
  done
done

echo ""
if $DRY_RUN; then
  echo "Dry run: $count skill(s) would be installed to $TARGET"
else
  echo "Installed $count skill(s) to $TARGET"
  echo "Restart your Claude Code session (or reload skills, if your client supports hot-reload) to pick them up."
fi

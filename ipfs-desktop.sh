#!/bin/bash

EXTRA_OPTS=()

if [[ "${FORCE_WAYLAND}" -eq 1 ]]; then
  EXTRA_OPTS+=(
    "--enable-features=WaylandWindowDecorations"
    "--ozone-platform-hint=auto"
  )
fi

export TMPDIR=$XDG_RUNTIME_DIR/app/$FLATPAK_ID
exec zypak-wrapper /app/ipfs-desktop-linux-x64/ipfs-desktop "${EXTRA_OPTS[@]}" "$@"
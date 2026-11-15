#!/bin/sh
set -e
_APPDIR="/usr/lib/vesktop"
_RUNNAME="${_APPDIR}/app.asar"

export PATH="${_APPDIR}:${PATH}"
export ELECTRON_IS_DEV=0
export ELECTRON_FORCE_IS_PACKAGED=true
export ELECTRON_DISABLE_SECURITY_WARNINGS=true
export NODE_ENV=production
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

_FLAGS_FILE="${XDG_CONFIG_HOME}/vesktop-flags.conf"
declare -a flags
if [[ -f "${_FLAGS_FILE}" ]]; then
    mapfile -t < "${_FLAGS_FILE}"
fi
for line in "${MAPFILE[@]}"; do
    if [[ ! "${line}" =~ ^[[:space:]]*#.* ]] && [[ -n "${line}" ]]; then
        flags+=("${line}")
    fi
done

cd "${_APPDIR}"
electron "${_RUNNAME}" "${flags[@]}" "$@" || exit $?

#!/usr/bin/env bash
set -e

if [ "${1##*.}" == 'json' ] || [ "${1##*.}" == 'yml' ]; then
    set -- hrun "$@"
elif [ "${1##*.}" == 'sh' ]; then
    set -- sh "$@"
fi

exec "$@"
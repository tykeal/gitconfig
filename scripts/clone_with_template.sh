#!/bin/sh

# shellcheck disable=SC3041
realdir=$(set -P; pwd)

# shellcheck disable=SC3010
if [[ "$realdir" == *"gerrit"* ]];
then
    echo "Gerrit clone destination detected"
    # shellcheck disable=SC2068
    git clone --template="${HOME}/.gitconfig.d/templates/gerrit-git-template/" ${@}
else
    echo "Non-Gerrit clone destination detected"
    # shellcheck disable=SC2068
    git clone --template="${HOME}/.gitconfig.d/templates/git-template/" ${@}
fi

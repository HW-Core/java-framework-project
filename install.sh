#!/usr/bin/env bash

PATH_MODULES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../../"
[ ! -d $PATH_MODULES/drassil/joiner ] && git clone https://github.com/drassil/joiner $PATH_MODULES/drassil/joiner -b master
source "$PATH_MODULES/drassil/joiner/joiner.sh"

VENDOR="hw-core"

#
# ADD DEPENDENCIES
#


Joiner:add_repo "https://github.com/HW-Core/java-lib-common.git"      "java-lib-common"          "master" "$VENDOR"
Joiner:add_repo "https://github.com/HW-Core/java-lib-climenu.git"      "java-lib-climenu"          "master" "$VENDOR"
Joiner:add_repo "https://github.com/HW-Core/java-lib-database.git"      "java-lib-database"          "master" "$VENDOR"
Joiner:add_repo "https://github.com/HW-Core/java-lib-xml.git"      "java-lib-xml"          "master" "$VENDOR"


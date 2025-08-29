#!/bin/zsh

# A `realpath` alternative using the default C implementation.
filepath() {
  [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

OPENRENDERBOX_ROOT="$(dirname $(dirname $(filepath $0)))"

cd $OPENRENDERBOX_ROOT

swift build -Xswiftc -emit-module-interface -Xswiftc -enable-library-evolution -Xswiftc -no-verify-emitted-module-interface

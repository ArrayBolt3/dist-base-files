#!/bin/bash --

## Copyright (C) 2025 - 2025 ENCRYPTED SUPPORT LLC <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

set -o errexit
set -o nounset
set -o pipefail
set -o errtrace
shopt -s inherit_errexit
shopt -s shift_verbose

qvm-features-request boot-mode.kernelopts.user=''
qvm-features-request boot-mode.name.user='PERSISTENT Mode - USER Session'
qvm-features-request boot-mode.active='user'
qvm-features-request boot-mode.appvm-default='user'
qvm-features-request boot-mode.standalone-default='user'

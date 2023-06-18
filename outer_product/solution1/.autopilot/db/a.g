#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/leoh/Documents/spgemm-format-exploration/outer_product/solution1/.autopilot/db/a.g.bc ${1+"$@"}

#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/zain/Documents/hls/processing_elements/outer_product/solution1/.autopilot/db/a.g.bc ${1+"$@"}

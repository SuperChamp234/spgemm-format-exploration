#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/zain/Documents/hls/processing_elements/processing_elements/solution1/.autopilot/db/a.g.bc ${1+"$@"}

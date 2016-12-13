#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/cospan/Projects/xilinx_projects/XAPP1167_2014.4/apps/fast-corners/prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}

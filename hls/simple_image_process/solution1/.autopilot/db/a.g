#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/cospan/Projects/xilinx_projects/hdl-image-processing/hls/simple_image_process/solution1/.autopilot/db/a.g.bc ${1+"$@"}
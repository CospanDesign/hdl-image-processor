#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/cospan/Projects/xilinx_projects/hdl_image_processing/pynq/hdl_process_static_image/hls/prj/pynq_solution/.autopilot/db/a.g.bc ${1+"$@"}

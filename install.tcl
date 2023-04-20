set version 0.1
set dir [file join [file dirname [info library]] tintest-0.1]
file delete -force $dir
file mkdir $dir
file copy -force pkgIndex.tcl tintest.tcl $dir

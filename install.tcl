set version 0.3.2
set dir [file join [file dirname [info library]] "tintest-$version"]
file delete -force $dir
file mkdir $dir
file copy -force pkgIndex.tcl tintest.tcl README.md LICENSE $dir

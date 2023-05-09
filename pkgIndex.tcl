if {![package vsatisfies [package provide Tcl] 8.6]} {return}
package ifneeded tintest 1.2a0 [list source [file join $dir tintest.tcl]]
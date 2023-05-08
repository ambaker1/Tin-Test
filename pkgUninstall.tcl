# This is an example of a user-defined pkgUninstall.tcl file
file delete [file join $dir pkgIndex.tcl]
# For this example, we will only delete the pkgIndex.tcl file.
# Therefore, the package will be uninstalled, but the folder will still exist.
# By default, tin uninstall just deletes the package folder.
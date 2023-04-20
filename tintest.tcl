# A package for Tin unit tests

namespace eval ::tintest {
    variable message "Hello World!"
    namespace export foo bar
}

proc ::tintest::foo {} {
    variable message
    return $message
}

proc ::tintest::bar {} {
    variable message
    return [string toupper $message]
}

package provide tintest 0.1.1

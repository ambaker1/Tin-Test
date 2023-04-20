# A package for Tin unit tests

namespace eval ::tintest {
    variable message "Hello World!"
    namespace export foo bar foobar
}

proc ::tintest::foo {} {
    variable message
    return $message
}

proc ::tintest::bar {} {
    variable message
    return [string toupper $message]
}

proc ::tintest::foobar {} {
    return [list [foo] [bar]]
}

package provide tintest 0.2

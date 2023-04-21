# A package for Tin unit tests

namespace eval ::tintest {
    variable greeting "Hello"
    namespace export foo bar foobar
}

proc ::tintest::foo {{who World}} {
    variable greeting
    return "$greeting $who!"
}

proc ::tintest::bar {{who World}} {
    variable greeting
    return [string toupper "$greeting $who!"]
}

proc ::tintest::foobar {} {
    return [list [foo] [bar]]
}

package provide tintest 0.3

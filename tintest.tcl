# A package for Tin unit tests

namespace eval ::tintest {
    variable greeting "Hello"
    namespace export foo bar foo_bar bar_foo
}

proc ::tintest::foo {{who World}} {
    variable greeting
    return "$greeting $who!"
}

proc ::tintest::bar {{who World}} {
    variable greeting
    return [string toupper "$greeting $who!"]
}

proc ::tintest::foo_bar {{who World}} {
    return [list [foo $who] [bar $who]]
}

proc ::tintest::bar_foo {{who World}} {
    return [list [bar $who] [foo $who]]
}

package provide tintest 1.0

# A package for Tin unit tests

namespace eval ::tintest {
    variable greeting "Hello"
    namespace export foo bar foo_bar bar_foo boo far
}

proc ::tintest::foo {{who World}} {
    variable greeting
    return "$greeting $who!"
}

proc ::tintest::bar {{who World}} {
    variable greeting
    string toupper "$greeting $who!"
}

proc ::tintest::foo_bar {{who World}} {
    list [foo $who] [bar $who]
}

proc ::tintest::bar_foo {{who World}} {
    list [bar $who] [foo $who]
}

proc ::tinlist::boo {{who World}} {
    bar [foo $who]
}

proc ::tinlist::far {{who World}} {
    foo [bar $who]
}

package provide tintest 1b0

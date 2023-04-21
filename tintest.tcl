# A package for Tin unit tests

namespace eval ::tintest {
    variable greeting "Hello"
    namespace export foo bar foo_bar bar_foo boo far
}

# foo --
# Returns a greeting, by default to the World.

proc ::tintest::foo {{who World}} {
    variable greeting
    return "$greeting $who!"
}

# bar --
# Returns a greeting in all caps, by default to the World.

proc ::tintest::bar {{who World}} {
    variable greeting
    string toupper "$greeting $who!"
}

# foo_bar --
# Returns list of foo and bar results

proc ::tintest::foo_bar {{who World}} {
    list [foo $who] [bar $who]
}

# bar_foo --
# Returns list of bar and foo results

proc ::tintest::bar_foo {{who World}} {
    list [bar $who] [foo $who]
}

# boo --
# Loudly greets the greeting

proc ::tintest::boo {{who World}} {
    bar [foo $who]
}

# far --
# Greets the loud greeting

proc ::tintest::far {{who World}} {
    foo [bar $who]
}

package provide tintest 1.0

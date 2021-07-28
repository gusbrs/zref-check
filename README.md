# zref-check

**Flexible LaTeX cross-references with contextual checks based on zref**

`zref-check` provides an user interface for making LaTeX cross-references
exploiting document contextual information to enrich the way the reference can
be rendered.

The basic idea is that, instead of trying to provide the text to be typeset
based on the contextual information, `zref-check` lets the user supply an
arbitrary text and specify a number of checks to be done on the label(s) being
referred to.  If the checks fail, a warning is issued upon compilation, so
that the user can go back to that cross-reference and correct it as needed.
Hence, `zref-check` does not automate the format of your cross-reference text
is typeset, it just provides instead a warning so that the problem can be
identified (and fixed) without having to rely on burdensome and error prone
manual proof-reading.

For more details, check the [Documentation](zref-check.pdf).


# zref-check

**Flexible LaTeX cross-references with contextual checks based on zref**

`zref-check` provides an user interface for making LaTeX cross-references
flexibly, while allowing to have them checked for consistency with the
document structure as typeset.  Statements such as “above”, “on the next
page”, “previously”, “as will be discussed”, “on the previous chapter” and so
on can be given to `\zcheck` in free-form, and a set of “checks” can be
specified to be run against a given `label`, which will result in a warning at
compilation time if any of these checks fail.  `\zctarget` and the `zcregion`
environment are also defined as a means to easily set label targets to
arbitrary places in the text which can be referred to by `\zcheck`.

The released version of this package is available [from CTAN](https://ctan.org/pkg/zref-check).

For more details, check the [Documentation](https://mirrors.ctan.org/macros/latex/contrib/zref-check/zref-check-doc.pdf).

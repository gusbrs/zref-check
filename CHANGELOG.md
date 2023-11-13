# Changelog

## [Unreleased](https://github.com/gusbrs/zref-check/compare/v0.3.4...HEAD)

### Changed
- Don't use `expl3` public scratch temporary variables.
- Prefer `e-type` expansion.
- Require 2023-11-01 LaTeX kernel.

## [v0.3.4](https://github.com/gusbrs/zref-check/compare/v0.3.3...v0.3.4) (2023-08-13)

### Added
- Support for empty labels in `\zcheck`.
- New alias `ok` of `msglevel=none` for local use.
- New `manual` check.

### Changed
- Calls to `\zcheck` with no checks issue a message, also subject to the
  `msglevel` option.

### Removed
- Option values `msglevel=obeydraft`, `msglevel=obeyfinal`,
  `onpage=obeydraft`, and `onpage=obeyfinal`, which had been deprecated since
  v0.2.2 (2021-12-07), have been removed.
- Option `labelcmd`, which had been deprecated since v0.2.4 (2022-02-08), has
  been removed.

## [v0.3.3](https://github.com/gusbrs/zref-check/compare/v0.3.2...v0.3.3) (2023-06-14)

### Changed
- Improvements to User manual.
- Simplify regression tests.

## [v0.3.2](https://github.com/gusbrs/zref-check/compare/v0.3.1...v0.3.2) (2022-07-07)

### Fixed
- Recompiled documentation with workaround for upstream `l3doc` bug.

## [v0.3.1](https://github.com/gusbrs/zref-check/compare/v0.3.0...v0.3.1) (2022-07-05)

### Changed
- Adjust some warning messages to try to improve machine-readability, and thus
  editor parsing, of the log (see https://tex.stackexchange.com/q/649548).
- (Internal) Use standard counters to keep track of sections and chapters.

## [v0.3.0](https://github.com/gusbrs/zref-check/compare/v0.2.5...v0.3.0) (2022-04-22)

### Changed
- `zref-check` no longer accepts package options to be set a load-time,
  `\zrefchecksetup` must be used instead.  The use of load-time options now
  results in "Unknown option" LaTeX error.  This change requires that users
  adjust their documents, and a suitable package warning has been provided so
  that affected users know of the change directly and how to adjust.

## [v0.2.5](https://github.com/gusbrs/zref-check/compare/v0.2.4...v0.2.5) (2022-02-11)

### Changed
- (Internal) Option variables setting was reviewed, ensuring proper scope is
  in use and that they are always properly declared.  `expl3` debugging
  enabled in regression tests.

## [v0.2.4](https://github.com/gusbrs/zref-check/compare/v0.2.3...v0.2.4) (2022-02-08)

### Added
- New `otherpage` check.
- Infrastructure support provided for integration with `zref-vario`.

### Deprecated
- Option `labelcmd` has been deprecated with no replacement.  The originally
  intended use for this option has been made obsolete by package
  `zref-clever`.

## [v0.2.3](https://github.com/gusbrs/zref-check/compare/v0.2.2...v0.2.3) (2021-12-20)

### Fixed
- Use `main` property list for user facing labels in `\zctarget` and
  `zcregion` environment, so that references made to them with `zref-clever`
  contain all required properties.

## [v0.2.2](https://github.com/gusbrs/zref-check/compare/v0.2.1...v0.2.2) (2021-12-07)

### Changed
- Option values `msglevel=obeydraft`, `msglevel=obeyfinal`,
  `onpage=obeydraft`, and `onpage=obeyfinal` have been respectively renamed to
  `msglevel=infoifdraft`, `msglevel=warniffinal`, `onpage=labelseqifdraft`,
  and `onpage=msgiffinal`.  Previous values have been deprecated.
- Spare setting end label for `\zctarget` with empty text argument.

## [v0.2.1](https://github.com/gusbrs/zref-check/compare/v0.2.0...v0.2.1) (2021-09-16)

### Changed
- Use `\msg_line_context:` instead of `\msg_line_number:` for messages.
- Use more efficient way to set checks as option keys in `\zcheck`.
- Spare setting end label in `\zcheck` for checks which don't need it.
- Separate `zref` property lists for checks and targets, so that only the
  minimum set of required properties for each are used.

### Added
- New `pagegap` check.
- Provide infrastructure for integration with `zref-clever`.

## [v0.2.0](https://github.com/gusbrs/zref-check/compare/v0.1.0...v0.2.0) (2021-08-17)

### Changed
- The syntax of user command `\zcheck` has changed.  Previously, it received
  the `<checks>` as a second optional argument, now both `<checks>` and
  `<options>` can be passed together in the single optional argument to
  `\zcheck`.
- (Internal) Use new hook management system syntax for begindocument hooks.
- (Internal) Use prefix for internal zref properties.
- Small adjustments in User manual.

### Added
- CTAN upload automation with l3build.
- Regression tests for labels with `babel` active characters.
- Dedicated Readme for CTAN.

## [v0.1.0](https://github.com/gusbrs/zref-check/releases/tag/v0.1.0) (2021-08-04)

### Added
- Initial release.

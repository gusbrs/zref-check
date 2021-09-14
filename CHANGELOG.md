# Changelog

## [Unreleased](https://github.com/gusbrs/zref-check/compare/v0.2.0...HEAD)

### Changed
- Use `\msg_line_context:` instead of `\msg_line_number:` for messages.
- Use more efficient way to set checks as option keys in `\zcheck`.
- Spare setting end label in `\zcheck` for checks which don't need it.
- Separate `zref` property lists for checks and targets, so that only the
  minimum set of required properties for each are used.

### Added
- New `pagegap` check.

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

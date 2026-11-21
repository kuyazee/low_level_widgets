# Publishing low_level_widgets

The first upload needs the owner's pub.dev account. Before publishing, check
the package contents and licence with `flutter pub publish --dry-run`. Publish
only when the owner requests a release.

After the first upload, enable GitHub Actions publishing on the package's
pub.dev admin page. Set the repository to `kuyazee/low_level_widgets` and the tag
pattern to `v{{version}}` with push events enabled.

For later releases, update the version in `pubspec.yaml` and add the matching
entry to `CHANGELOG.md`. Run the contributor checks in the README and do a
publish dry run from a clean checkout. A GitHub Release that creates a new
`vX.Y.Z` tag triggers the workflow. The workflow tests that tag, checks it
against the package version, and skips an existing pub.dev version. Verify
the workflow result and the version on pub.dev after each release.

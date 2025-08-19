# Changelog

## [2.0.25] - 2025-08-19
### Added
- **Theme ColorScheme Extensions**: Added comprehensive `ColorSchemeExt` getters on `BuildContext` (e.g., `context.primary`, `context.surfaceContainerHigh`, etc.) with documentation comments for all relevant `ColorScheme` fields.

### Changed
- **Flutter Compatibility**: Verified with Flutter 3.35.1 and Dart 3.9.0. Minimum constraints updated to Flutter >= 3.35.0 and Dart >= 3.9.0.
- **Deprecations Addressed**: Replaced deprecated `surfaceVariant` with `surfaceContainerHighest`, and mapped `background`/`onBackground` to `surface`/`onSurface` within the extensions.

## [2.0.24] - 2025-07-19
### Added
- **Padding Extension**: Added support for EdgeInsetsDirectional.only(start: ...) and EdgeInsetsDirectional.only(end: ...) through new widget extensions to ensure RTL-compatible horizontal padding.

## [2.0.23] - 2025-06-22
### Changed
- **Minimum SDK Requirement**: Now requires Flutter 3.32.0 or higher and Dart 3.8.0 or higher.

## [2.0.22] - 2025-06-15
### Added
- **Color Extension Enhancement**: Added `alphaPercent` method to `ColorExtension` for setting alpha transparency using percentage values (0-100).

### Changed
- **Flutter 3.32.4 Compatibility**: Updated Flutter SDK version from 3.29.1 to 3.32.4 for latest features and improvements.
- **Tooltip Extension Update**: Replaced deprecated `height` parameter with `constraints` parameter in `withTooltip` extension method to align with Flutter's latest API changes.
- **Development Dependencies**: Updated `flutter_lints` to version ^6.0.0 for improved code analysis and linting.

## [2.0.21] - 2025-03-12
### Changed
- Split Package into Dart and Flutter Modules

## [2.0.20] - 2024-12-21
### Added
- **Adoptive Dialog**: Replaced deprecated `showAlertDialog` method in context extension with a new implementation, ensuring compatibility with future versions of Flutter.
- **Color Extension Update**: Enhanced and updated the color extension to align with the latest Flutter theming and color management practices.

### Changed
- **Flutter 3.27.1 Compatibility**: Refactored the codebase to ensure compatibility with Flutter 3.27.1, addressing API deprecations and breaking changes.

## [2.0.19] - 2024-10-26
### Added
- **Light and Dark Theme Extensions**: Introduced extensions for easier management of light and dark themes in Flutter.
- **`separatedBy` Method**: Added a new `separatedBy` method to `ListExtension`.

## [2.0.18] - 2024-09-24
### Changed
- **Navigation Extension Update**: Improved the functionality of the navigation extension.

## [2.0.17] - 2024-08-01
### Changed
- **Navigation Extension Update**: Further updates and optimizations to the navigation extension.

## [2.0.16] - 2024-05-19
### Added
- **Flutter Web WASM Support**: Added support for Flutter Web with WASM (WebAssembly).

## [2.0.15] - 2024-05-19
### Changed
- **Flutter 3.22.0 Compatibility**: Updated the codebase to be compatible with Flutter 3.22.0.

## [2.0.14] - 2024-04-19
### Changed
- **Flutter 3.19.6 Compatibility**: Updated the codebase to be compatible with Flutter 3.19.6.

### Added
- **Color, Theme, and Num Extensions**: Added additional extensions for color, theme, and number handling.

## [2.0.13] - 2024-02-28
### Changed
- **Flutter 3.19.1 Compatibility**: Updated the codebase to be compatible with Flutter 3.19.1.

## [2.0.12] - 2024-01-22
### Removed
- **Deprecated Classes**: Removed deprecated classes as per Flutter 3.16.8.

## [2.0.11] - 2023-12-23
### Changed
- **Flutter 3.16.5 Compatibility**: Updated the codebase to be compatible with Flutter 3.16.5.

### Added
- **Root Navigation**: Added `rootNavigation` to the Navigator extension.
- **Documentation Updates**: Improved and updated the project documentation.

## [2.0.10] - 2023-10-26
### Changed
- **Flutter 3.13.9 Compatibility**: Updated the codebase to be compatible with Flutter 3.13.9.

## [2.0.9] - 2023-07-16
### Added
- **Media Query Extension**: By calling `MediaQuery.sizeOf(context)`, the widget will now rebuild only when the size changes, preventing unnecessary rebuilds.
- **Inherited Model Media Query**: Added extensions for better handling of media queries using Inherited Model.

## [2.0.8] - 2023-05-28
### Removed
- **`WindowPadding`**: This feature was deprecated after `v3.8.0-14.0.pre`.

## [2.0.7] - 2023-04-21
### Fixed
- **Naming Issue in `Flexible` Extension**: Corrected naming issues within the `Flexible` extension.

## [2.0.6] - 2023-04-16
### Added
- **`Expandable` Extension**: Introduced a new extension for expandable widgets.
- **`Flexible` Extension**: Added a new extension to handle flexible layouts more easily.

### Updated
- **Documentation**: Improved the project documentation for better clarity.

## [2.0.5] - 2023-02-08
### Added
- **`Opacity` Extension**: Introduced an extension for better opacity control.

### Updated
- **Documentation**: Updated project documentation.
- **Flutter 3.7 Compatibility**: Updated the project to support Flutter 3.7.

## [2.0.4] - 2022-11-23
### Added
- **Nil Widget**: Added a new `Nil` widget for better handling of empty or null states.

### Updated
- **Documentation**: Improved project documentation for easier usage.

## [2.0.3] - 2022-08-01
### Updated
- **Documentation**: Continued improving documentation.

## [2.0.2] - 2022-05-27
### Changed
- **Flutter 3.0 Support**: Updated the codebase to be compatible with Flutter 3.0.

## [2.0.0] - 2022-05-01
### Updated
- **Documentation**: Comprehensive update to the project documentation.
- **Removed 2018 Text Style**: Removed deprecated 2018 text style.
- **Navigation Extension Rename**: Renamed navigation extension. Refer to the README for more details.

### Added
- **Num Extension**: Introduced additional extensions for number handling.
- **String Extension**: Added new extensions for string manipulation.
- **Alert Dialog Extension**: Added new alert dialog extension.

## [1.1.0] - 2022-03-12
### Updated
- **Documentation**: Updated project documentation.
- **Flutter SDK Constraint**: Introduced a minimum Flutter SDK version of 2.10.
- **Text Style Renaming**: Updated text style names from 2018 to 2021 (`display`, `headline`, `title`, `body`, `label`, etc.).

## [1.0.8] - 2022-02-26
### Updated
- **Documentation**: Updated the project documentation.
- **Example Updates**: Updated the example code for clarity.

## [1.0.7] - 2021-12-05
### Updated
- **Navigation Extension**: Updated the navigation extension for better functionality.

## [1.0.6] - 2021-09-14
### Added
- **Num Extension**: Added a new extension for handling numeric values.

### Updated
- **Example**: Updated the example code to reflect the new changes.
- **README**: Updated the README file with more details.

## [1.0.5] - 2021-07-25
### Added
- **Avatar Widget**: Introduced an `Avatar` image widget for profile images.

### Updated
- **Example**: Updated the example code.
- **README**: Updated the README file.

## [1.0.4] - 2021-07-01
### Updated
- **Example**: Updated the example code.
- **README**: Updated the README file.

## [1.0.3] - 2021-06-24
### Added
- **Text Extension**: Added an extension for `Text` widget manipulation.
- **Align Extension**: Added an extension for `Align` widget manipulation.
- **Center Extension**: Added an extension for `Center` widget manipulation.
- **Container Extension**: Added an extension for `Container` widget manipulation.
- **Gesture Detector Extension**: Added an extension for `GestureDetector` widget manipulation.
- **ToolTip Extension**: Added an extension for `Tooltip` widget manipulation.

## [1.0.2] - 2021-06-09
### Added
- **URL Strategy for Web**: Introduced a URL strategy for better handling of web URLs.
- **Example Update**: Updated the example to support null safety.

## [1.0.1] - 2021-04-26
### Added
- **Theme Extensions**: Added new theme-related extensions for easier management.
- **Platform Extensions**: Added platform-specific extensions for better platform handling.
- **Responsive Screen Extensions**: Added extensions for responsive screen layouts based on screen size.

## [1.0.0] - 2021-04-22
### Changed
- **Null Safety Migration**: Migrated the project to full null safety support.

## [0.0.6] - 2021-04-03
### Added
- **Context Extension for `MediaQuery`**: Added context extensions for better handling of media queries.

## [0.0.5] - 2021-03-06
### Added
- **Shimmer Extension**: Added a new `Shimmer` extension for shimmer effects.

## [0.0.4] - 2021-02-11
### Added
- **BuildContext Extension**: Added new extensions for `BuildContext`.

## [0.0.3] - 2021-02-09
### Updated
- **Example**: Updated the example.
- **README**: Updated the README file.

## [0.0.2] - 2021-02-08
### Added
- **Example**: Added an example project.
- **README**: Added the

## [0.0.1] - 2021-02-08
### Added
- **`TEXT` Style Extension**: Introduced a `TEXT` extension for easier manipulation and usage of text styles.
- **`DATE` Extension**: Added a `DATE` extension for handling date-related operations.
- **`SizedBox` Extension**: Added an extension for `SizedBox` for more flexible and reusable sizing.

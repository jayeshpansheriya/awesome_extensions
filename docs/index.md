# Awesome Extensions

[![pub package](https://img.shields.io/pub/v/awesome_extensions.svg?label=awesome_extensions&color=blue)](https://pub.dev/packages/awesome_extensions)
[![likes](https://img.shields.io/pub/likes/awesome_extensions)](https://pub.dev/packages/awesome_extensions/score)
[![popularity](https://img.shields.io/pub/popularity/awesome_extensions)](https://pub.dev/packages/awesome_extensions/score)
[![pub points](https://img.shields.io/pub/points/awesome_extensions)](https://pub.dev/packages/awesome_extensions/score)

![flutter_extension](https://user-images.githubusercontent.com/31765271/205228040-e9211b4a-8f8e-49c9-b0fd-3094120a0a5e.png)

## Let get started 💪

1. Go to `pubspec.yaml`
2. Add awesome_extensions and replace `[version]` with the latest version:

```yaml
dependencies:
  awesome_extensions: ^[version]
```

3. Click the packages get button or run `flutter pub get`

## See [awesome_extensions](https://jayeshpansheriya.github.io/awesome_extensions) for docs & samples

- [Awesome Extensions](#awesome-extensions)
  - [Let get started 💪](#let-get-started-)
  - [See awesome_extensions for docs \& samples](#see-awesome_extensions-for-docs--samples)
  - [About](#about)
  - [Theme Extensions](#theme-extensions)
    - [TextStyle](#textstyle)
    - [Text](#text)
    - [Theme](#theme)
  - [Media Query Extensions For Responsive Layout](#media-query-extensions-for-responsive-layout)
  - [Navigation Extensions](#navigation-extensions)
  - [Focus & Keyboard Extensions](#focus--keyboard-extensions)
  - [Widget Extensions](#widget-extensions)
    - [SizeBox](#sizebox)
    - [Padding](#padding)
    - [Margin](#margin)
    - [Layout Helpers](#layout-helpers)
    - [Opacity](#opacity)
    - [Expanded](#expanded)
    - [Flexible](#flexible)  
    - [Shimmer Effect](#shimmer-effect)
    - [Nil Widget](#nil-widget)
    - [SliverToBoxAdapter](#slivertoboxadapter)
    - [Other](#other)
  - [List & Iterable Extensions](#list--iterable-extensions)
  - [Map Extensions](#map-extensions)
  - [Date Extensions](#date-extensions)
  - [Number Extensions](#number-extensions)
  - [String Extensions](#string-extensions)
  - [Async Extensions](#async-extensions)
  - [Color Extensions](#color-extensions)
  - [Url Strategy](#url-strategy)
  - [Avatar Image](#avatar-image)
  - [Support](#support)
  - [❤️❤️❤️](#️️️)

## About

An extension to the widget helps reduce the boilerplate and adds some helpful methods. and you can make a responsive design.

## Theme Extensions

#### TextStyle

From the `TextStyle` Access properties right in the `context` instance.

```dart
// Before
Text('Hello World', style: Theme.of(context).textTheme.labelSmall),

Text('Hello World', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 40))

// After
Text('Hello World', style: context.labelSmall),
// OR
Text('Hello World', style: context.displaySmall),
// If you want to bold text then
Text('Hello World', style: context.labelSmall?.bold),
```

FontWeight extensions that apply font weights on `TextStyle`:

- `mostThick` or `w900` The most thick - FontWeight.w900
- `extraBold` or `w800` Extra-bold - FontWeight.w800
- `bold` or `w700` Bold - FontWeight.bold - FontWeight.w700
- `semiBold` or `w600` Semi-bold - FontWeight.w600
- `medium` or `w500` Medium - FontWeight.w500
- `regular` or `w400` Regular - FontWeight.w400
- `light` or `w300` Light - FontWeight.w300
- `extraLight` or `w200` Extra-light - FontWeight.w200
- `thin` or `w100` Thin, the least thick - FontWeight.w100

Similar 2021 TextStyle are:

- `context.displayLarge`
- `context.displayMedium`
- `context.displaySmall`
- `context.headlineLarge`
- `context.headlineMedium`
- `context.headlineSmall`
- `context.titleLarge`
- `context.titleMedium`
- `context.titleSmall`
- `context.bodyLarge`
- `context.bodyMedium`
- `context.bodySmall`
- `context.labelLarge`
- `context.labelMedium`
- `context.labelSmall`

#### Text

If you don't want to use theme styles, then we have some other methods:

```dart
Text('Hello World')
    .bold()
    .fontSize(25)
    .italic();
```

Similar methods are:

- `textScale()` TextScale
- `bold()` Bold Text
- `italic()` Italic Text
- `fontWeight()` Specific FontWeight
- `fontSize()` Specific FontSize
- `letterSpacing()` Specific LetterSpacing
- `height()` Specific Height
- `wordSpacing()` Specific WordSpacing
- `fontFamily()` Specific FontFamily
- `textShadow()` Specific TextShadow
- `textColor()` TextColor
- `textAlignment()` Specific TextAlignment
- `withUnderLine()` TextUnderLine

#### Theme

From the `Theme` class. Access your themes right in the `context` instance.

- `context.theme`
- `context.textTheme`
- `context.primaryTextTheme`
- `context.bottomAppBarTheme`
- `context.bottomSheetTheme`
- `context.appBarTheme`
- `context.backgroundColor`
- `context.primaryColor`
- `context.primaryColorLight`
- `context.primaryColorDark`
- `context.focusColor`
- `context.hoverColor`
- `context.dividerColor`
- `context.scaffoldBackgroundColor`

## Media Query Extensions For Responsive Layout

From the `MediaQuery` Access properties right in the `context` instance.

```dart
// Before
 Container(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.width,
        )
// After
Container(
     width: context.width,
     height: context.width,
        )
```

Similar extensions are:

- `context.height` /// Height of the Screen,
- `context.width` // Width of Screen
- `context.mediaQuerySize`
- `context.orientation`
- `context.mediaQueryPadding`
- `context.alwaysUse24HourFormat`
- `context.devicePixelRatio`
- `context.platformBrightness`
- `context.textScaleFactor`
- `context.isLandscape`
- `context.isPortrait`
- `context.mediaQueryViewPadding`
- `context.mediaQueryViewInsets`
- `context.mediaQueryShortestSide`
- `context.showNavbar` // True if width be larger than 800
- `context.isPhone` // True if the shortestSide is smaller than 600p
- `context.isTablet` // True if the current device is Tablet
- `context.isSmallTablet` // True if the shortestSide is largest than 600p
- `context.isLargeTablet` // True if the shortestSide is largest than 720p

### MediaQuery as Inherited Model

- `context.mqSize` // The same of MediaQuery.sizeOf(context)
- `context.mqHeight` // The same of MediaQuery.sizeOf(context).height
- `context.mqWidth`
- `context.mqPadding` // similar to [MediaQuery.paddingOf(context)]
- `context.mqViewPadding`
- `context.mqViewInsets`
- `context.mqOrientation`
- `context.mqAlwaysUse24HourFormat`
- `context.mqDevicePixelRatio`
- `context.mqPlatformBrightness`
- `context.mqTextScaleFactor`

```dart
//Check in what platform the app is running
MyPlatform.isAndroid
MyPlatform.isIOS
MyPlatform.isMacOS
MyPlatform.isWindows
MyPlatform.isLinux
MyPlatform.isFuchsia

//Check the device type
MyPlatform.isMobile
MyPlatform.isDesktop
MyPlatform.isWeb

// Returns a value<T> according to the screen size
context.responsiveValue<T>(
    T? mobile,
    T? tablet,
    T? desktop,
)
```

## Navigation Extensions

From the `Navigator` Access properties right in the `context` instance.

```dart
// for push
context.push(SecondScreen());
context.pushNamed('/home');

// for back , you can also add back result data
context.pop();

// for replace
context.pushReplacement(SecondScreen());
context.pushReplacementNamed('/home');

// popUntil
context.popUntil('/login');

// with rootNavigator
context.push(SecondScreen(), rootNavigator: true);
context.pushReplacement(SecondScreen(), rootNavigator: true);
context.popUntil('/login', rootNavigator: true);

context.routeSettings;
context.routeName;
context.routeArguments;
```

## Focus & Keyboard Extensions

Easily manage input focus and dismiss the soft keyboard directly from `BuildContext`.

```dart
// Unfocus current input (dismiss keyboard)
context.unfocus();

// Hide keyboard from primary focus
context.hideKeyboard();

// Request focus for a specific FocusNode
context.requestFocus(myFocusNode);
```

## Widget Extensions

This extension reduces boilerplate code significantly.

#### SizeBox

```dart
// make space of 20.0 height
20.0.heightBox

// for width
20.0.widthBox
```

#### Padding

```dart
Text("text").paddingAll(8.0);
```

Similar padding extensions are:

- `paddingAll` Creates insets from offsets from all side.
- `paddingOnly` Creates insets with only the given values non-zero.
- `paddingLTRB` Creates insets from offsets from the left, top, right, and bottom.
- `paddingSymmetric` Creates insets with symmetrical vertical and horizontal offsets.
- `paddingFromWindowPadding` Creates insets that match the given window padding.

#### Margin

```dart
Text("Hello").marginAll(16.0);
Text("Hello").marginSymmetric(horizontal: 10.0, vertical: 5.0);
Text("Hello").marginOnly(left: 8.0, top: 4.0);
Text("Hello").marginDirectional(start: 12.0, top: 6.0);
```

#### Layout Helpers

Chainable widget wrappers to eliminate nested boilerplate code.

```dart
// Scrollable wrapper
Text("Long Content").scrollable(scrollDirection: Axis.vertical);

// SafeArea wrapper
Text("Content").safeArea();

// Card wrapper
Text("Card Content").card(elevation: 4.0);

// ClipRRect wrapper
Image.network("...").clipRRect(borderRadius: BorderRadius.circular(12));

// Conditional rendering
Text("Visible Content").visible(isLoggedIn);

// FittedBox wrapper
Text("Fitted Text").fittedBox(fit: BoxFit.contain);

// InkWell ripple wrapper
Text("Clickable").inkWell(onTap: () => print('tapped'));
```

### Opacity

```dart
Text("text").setOpacity(0.5)
```

### Expanded

```dart
Text("text").expanded()
```

### Flexible

```dart
Text("text").flexible()
```

#### Shimmer Effect

```dart
Container(height: 50, width: 50).applyShimmer();
```

#### Nil Widget

```dart
text != null ? Text(text) : nil
```

### SliverToBoxAdapter

```dart
Text(text).sliver;
```

#### Other

```dart
Container(
  height: 100,
  width: 100,
)
  .withRoundCorners(backgroundColor: Colors.grey)
  .withShadow()
  .alignAtCenter()
  .toCenter()
  .withTooltip('My Tooltip')
  .paddingOnly(left: 10)
  .paddingAll(20)
  .onTap(() => print('tap'))
  .onLongPress(() => print('long press'));
```

## List & Iterable Extensions

#### Safe Element Access & Lookup

```dart
final list = [10, 20, 30];

// Safe lookup without throwing RangeError
list.getOrNull(0); // 10
list.getOrNull(5); // null

// Safe predicate search without throwing StateError
list.firstWhereOrNull((e) => e > 15); // 20
list.lastWhereOrNull((e) => e < 25);  // 20
```

#### Chunking & Distinct Filtering

```dart
// Split list into chunks of specified size
[1, 2, 3, 4, 5].chunked(2); // [[1, 2], [3, 4], [5]]

// Filter unique elements by key selector
users.distinctBy((u) => u.id);
```

#### notNullWidget

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget?>[
    Container(height: 100, width: 100, color: Colors.red).showIf(true),
    Container(height: 100, width: 100, color: Colors.green).showIf(false),
  ].notNullWidget(), // returns only not null widgets
),
```

#### SeparatedBy

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    const Text('Hello').paddingAll(5),
    const Text('World').paddingAll(5),
    const Text('Separated').paddingAll(5),
    const Text('By').paddingAll(5),
    const Text('Commas').paddingAll(5),
  ].separatedBy(const Text(',')),
),
```

## Map Extensions

```dart
final map = {'name': 'John'};

final age = map.getOrDefault('age', 30);
```

- `getOrDefault(key, defaultValue)`
- `getOrElse(key, function)`
- `filterKeys(predicate)`
- `filterValues(predicate)`
- `toQueryString()`
- `merge(otherMap)`
- `getNested('user.profile.name')`
- `setNested('user.profile.age', 28)`

## Date Extensions

```dart
// Date comparisons
date.isSameDate(otherDate);    // bool
date.isToday;                   // bool
date.isYesterday;               // bool
date.isTomorrow;                // bool
date.isLeapYear;                // bool

// Date boundaries & calculations
date.daysInMonth;               // int (e.g. 28, 29, 30, 31)
date.startOfDay;                // DateTime at 00:00:00
date.endOfDay;                  // DateTime at 23:59:59
date.addDays(5);                // DateTime + 5 days
date.subtractDays(2);           // DateTime - 2 days

// Relative time formatting
DateTime.now().subtract(const Duration(minutes: 5)).timeAgo; // "5 minutes ago"
```

## Number Extensions

#### Formatting & Calculations

```dart
// Currency formatting
1234.5.toCurrency(symbol: '$'); // "$1234.50"

// Percentage formatting
0.75.toPercent();               // "75%"

// Round to decimal places
3.14159.roundToDecimal(2);      // 3.14
```

#### Future & Duration

```dart
await 2.delay();
1.delay(() => print('callback'));

print(1.seconds + 200.milliseconds);
print(1.hours + 30.minutes);
```

## String Extensions

```dart
// your name => Your Name
'your name'.capitalize;

// your name => Your name
'your name'.capitalizeFirst;

// your name => yourname
'your name'.removeAllWhitespace;

// Convert to URL-friendly slug
'Hello World!'.toSlug; // "hello-world"

// Remove special characters
'Hello@# World!'.removeSpecialCharacters; // "Hello World"

// Check valid JSON
'{"key": "value"}'.isJson; // true

// Match RegExp & validations
'123'.isNumericOnly;        // true
'abc'.isAlphabetOnly;       // true
'Hello'.hasCapitalLetter;   // true
'true'.isBool;              // true
```

#### Nullable String Extensions

```dart
String? text;

text.isNullOrEmpty;      // true if null, empty, or whitespace only
text.isNotNullOrEmpty;   // true if contains valid non-whitespace text
text.orDefault('Guest'); // returns "Guest" if null or empty
```

## Async Extensions

```dart
StreamBuilder(
  stream: incomingMessagesStream,
  builder: (context, snapshot) {
    snapshot.when(
      data: (data, isComplete) => Text('Data: $data'),
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => CircularProgressIndicator(),
    );
  },
);
```

## Color Extensions

```dart
Color darkRed = Colors.red.darken(20);
Color lightRed = Colors.red.lighten(20);
Color semiTransparent = Colors.blue.alphaPercent(50);
```

## Url Strategy

```dart
void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}
```

## Avatar Image

```dart
AvatarImage(
  shape: AvatarImageShape.circle,
  child: Text('JP'),
  backgroundColor: Colors.red,
)
```

## Support

- ⭐ Star this repository
- 🔧 Send a Pull Request with new features
- 📢 Share this package
- 🐛 Create issues if you find a bug or want to suggest something

## ❤️❤️❤️

Supported by [JetBrains Open Source](https://www.jetbrains.com/community/opensource/#support)

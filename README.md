# awesome_extensions

![awesome_extensions](https://github.com/jayeshpansheriya/awesome_extensions/blob/main/flutter_extension.png?raw=true)


## Let get started 💪

1. Go to `pubspec.yaml`
2. add a awesome_extensions and replace `[version]` with the latest version:

```dart
dependencies:
 awesome_extensions: ^[version]
 ```

3. click the packages get button or *flutter pub get*

## TextStyle

### .bold()
```dart
// Before
Text('Hello World',style: Theme.of(context).textTheme.caption.bold,),

// After
Text('Hello World',style: context.textTheme.caption.bold,),
// OR
 Text('Hello World',style: context.textTheme.headline3,),
//OR
Text('Hello World',style: context.headline3,),
```
Similar text style extensions are:
* `mostThick` The most thick - FontWeight.w900
* `extraBold` Extra-bold - FontWeight.w800
* `bold` Bold - FontWeight.bold - FontWeight.w700
* `semiBold` Semi-bold - FontWeight.w600
* `medium` Medium - FontWeight.w500
* `regular` Regular - FontWeight.w400
* `light` Light - FontWeight.w300
* `extraLight` Extra-light - FontWeight.w200
* `thin` Thin, the least thick - FontWeight.w100


#### From the `Theme` class. Access your themes right in the `context` instance. Available extensions:

* `context.theme`
* `context.textTheme`
* `context.primaryTextTheme`
* `context.accentTextTheme`
* `context.bottomAppBarTheme`
* `context.bottomSheetTheme`
* `context.appBarTheme`
* `context.backgroundColor`
* `context.primaryColor`
* `context.buttonColor`
* `context.scaffoldBackgroundColor`
* `context.headline1`
* `context.headline2`
* `context.headline3`
* `context.headline4`
* `context.headline5`
* `context.headline6`
* `context.subtitle1`
* `context.bodyText1`
* `context.bodyText2`
* `context.caption`
* `context.button`
* `context.subtitle2`
* `context.overline`

## SizeBox

This extension is reduced more code like:
```dart
// Before
SizedBox(
    height : 20.0
   )
// After
// make space of 20.0 height
 20.0.heightBox

 // for width
 20.0.widthBox
```

## Date

```dart
// for check two date are same or not
date.isSameDate(otherdate);    // its return bool (true/false)

// for check date is today's date
date.isToday    // its return bool (true/false)

// for check this date is yesterday's date
date.isYesterday    // its return bool (true/false)
```

## Padding

```dart
// Before
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Text("text"),
);

// After
 Text("text").paddingAll(8.0),
```

Similar padding extensions are:
* `paddingAll` Creates insets from offsets from all side.
* `paddingOnly` Creates insets with only the given values non-zero.
* `paddingLTRB` Creates insets from offsets from the left, top, right, and bottom.
* `paddingSymmetric` Creates insets with symmetrical vertical and horizontal offsets.
* `paddingFromWindowPadding` Creates insets that match the given window padding.




## BuildContext

```dart
// Before
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondScreen()),
  );

// After

// for push
 context.to(SecondScreen());
 context.toNamed('/home');

// for back
context.back();

// for replace
context.replaceWith(SecondScreen());
context.replaceWithNamed('/home');

// popUntil
context.backUntilNamed('/login');

// pushAndRemoveUntil
context.toAndRemoveUntil(SecondScreen());
context.toAndRemoveUntil(SecondScreen(),routes: false);
context.toAndRemoveUntilName('/login');
```

## For Responsive Layout (MediaQuery)


```dart
// Equivalent to : MediaQuery.of(context).size.height,
// Height of the Screen
context.height

// Width of Screen
context.width
```


## Shimmer Effect

```dart
Container(height: 50,width: 50,).applyShimmer();
```
you can also change color of shimmer using `Color baseColor`, `Color highlightColor`

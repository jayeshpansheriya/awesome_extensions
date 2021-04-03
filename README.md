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

## TextStyle Extensions

### .bold()
```dart
Text('Hello World',
    style: Theme.of(context).textTheme.caption.bold,
   ),

   // or

   Text('Hello World',
       style: context.textTheme.caption.bold,
      ),

      // or

   Text('Hello World',
       style: context.textTheme.headline3,
      ),
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


## SizeBox Extensions

This extension is reduced more code like:
```dart
SizedBox(
    height : 20.0
   )
```
you can done in 1 line code

```dart
// make space of 20.0 height
 20.0.heightBox

 // for width
 20.0.widthBox
```

## Date Extensions

```dart
// for check two date are same or not
date.isSameDate(otherdate);    // its return bool (true/false)

// for check date is today's date
date.isToday    // its return bool (true/false)

// for check this date is yesterday's date
date.isYesterday    // its return bool (true/false)
```

## Padding Extensions

for apply padding in widget you doing this:

```dart
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Text("text"),
);
```
but using padding extension:
```dart
 Text("text").paddingAll(8.0),
```

Similar padding extensions are:
* `paddingAll` Creates insets from offsets from all side.
* `paddingOnly` Creates insets with only the given values non-zero.
* `paddingLTRB` Creates insets from offsets from the left, top, right, and bottom.
* `paddingSymmetric` Creates insets with symmetrical vertical and horizontal offsets.
* `paddingFromWindowPadding` Creates insets that match the given window padding.


## Shimmer Effect

```dart
Container(height: 50,width: 50,).applyShimmer();
```
you can also change color of shimmer using `Color baseColor`, `Color highlightColor`


## Context Extensions

```dart
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondScreen()),
  );
```
context extension reduced  your code:
```dart
// for push
 context.to(SecondScreen());

// for back
context.back();

// for replace
context.replaceWith(SecondScreen());
```

## For Responsive Layout (MediaQuery)


```dart
// Equivalent to : MediaQuery.of(context).size.height,
// Height of the Screen
context.height

// Width of Screen
context.width
```
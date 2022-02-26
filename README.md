# Awesome Extensions

[![pub package](https://img.shields.io/pub/v/awesome_extensions.svg?label=get&color=blue)](https://pub.dev/packages/awesome_extensions)
[![popularity](https://badges.bar/awesome_extensions/popularity)](https://pub.dev/packages/awesome_extensions/score)
[![likes](https://badges.bar/awesome_extensions/likes)](https://pub.dev/packages/awesome_extensions/score)
[![pub points](https://badges.bar/awesome_extensions/pub%20points)](https://pub.dev/packages/awesome_extensions/score)

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
From the `TextStyle` Access properties right in the `context` instance.

#### TextStyle
```dart
// Before
Text('Hello World',style: Theme.of(context).textTheme.caption),

// After
Text('Hello World',style: context.caption),
// OR
Text('Hello World',style: context.headline3),
// If you want to bold text then 
Text('Hello World',style: context.caption.bold),
```
Similar fontWeight extensions are:
* `mostThick` The most thick - FontWeight.w900
* `extraBold` Extra-bold - FontWeight.w800
* `bold` Bold - FontWeight.bold - FontWeight.w700
* `semiBold` Semi-bold - FontWeight.w600
* `medium` Medium - FontWeight.w500
* `regular` Regular - FontWeight.w400
* `light` Light - FontWeight.w300
* `extraLight` Extra-light - FontWeight.w200
* `thin` Thin, the least thick - FontWeight.w100
  

### Theme TextStyle
From the `Theme` class. Access your themes right in the `context` instance.

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
  
If you dont want use theme, then we have some other methods:

```dart
Text('Hello World')
    .bold()
    .fontSize(25)
    .italic();
```



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
From the `Navigator` Access properties right in the `context` instance.

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

// for back , you can also add back result data
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
From the `MediaQuery` Access properties right in the `context` instance.
* `context.height`  // Height of the Screen, Equivalent to : MediaQuery.of(context).size.height,
* `context.width`   // Width of Screen
* `context.mediaQuerySize`
* `context.orientation`
* `context.mediaQueryPadding`
* `context.alwaysUse24HourFormat`
* `context.devicePixelRatio`
* `context.platformBrightness`
* `context.textScaleFactor`
* `context.isLandscape`
* `context.isPortrait`
* `context.mediaQueryViewPadding`
* `context.mediaQueryViewInsets`
* `context.mediaQueryShortestSide`


* `context.showNavbar`    // True if width be larger than 800
* `context.isPhone`       // True if the shortestSide is smaller than 600p
* `context.isTablet`      // True if the current device is Tablet
* `context.isSmallTablet`   // True if the shortestSide is largest than 600p
* `context.isLargeTablet`    // True if the shortestSide is largest than 720p


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
//All platforms are supported independently in web!
//You can tell if you are running inside a browser
//on Windows, iOS, OSX, Android, etc.
MyPlatform.isWeb


// Returns a value<T> according to the screen size
// can give value for:
// mobile: if the shortestSide is smaller than 600
// tablet: if the shortestSide is smaller than 1200
// desktop: if width is largest than 1200
context.responsiveValue<T>()
```

## Widget
Now we can just add round corners, shadows, align, and added gestures to our Widgets.
```dart
Container(
      height: 100,
       width: 100,)
         .withRoundCorners(backgroundColor: Colors.grey)
         .withShadow()
         .alignAtCenter()
         .toCenter()
         .withTooltip('My Tooltip')
         .paddingOnly(left: 10)
         .paddingAll(20)
         .onTap(() => print('tap'))
         .onLongPress(() => print('long press'))
```

## Future & Duration
Utility to delay some callback (or code execution).
```dart
print('+ wait for 2 seconds');
await 2.delay();
print('- 2 seconds completed');
print('+ callback in 1.2sec');
1.delay(() => print('- 1.2sec callback called'));
```
Easy way to make Durations from numbers.
```dart
print(1.seconds + 200.milliseconds);
print(1.hours + 30.minutes);
print(1.5.hours);
```

## Url Strategy

With a simple call of `setPathUrlStrategy`, your Flutter web app does not have a leading `#`
in the URL anymore 🚀
```dart
void main() {
// Here we set the URL strategy for our web app.
// It is safe to call this function when running on mobile or desktop as well.
setPathUrlStrategy();
runApp(MyApp());
}
```

## Shimmer Effect

```dart
Container(height: 50,width: 50,).applyShimmer();
```
you can also change color of shimmer using `Color baseColor`, `Color highlightColor`


## Flushbar
The most basic Flushbar uses only a message. Failing to provide it before you call `show()` will result in a runtime error. `Duration`, if not provided, will create an infinite Flushbar, only dismissible by code, back button clicks, or a drag (case `isDismissible` is set to `true`).
```dart
Flushbar(
  title:  "Hey Ninja",
  message:  "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
  duration:  Duration(seconds: 3),
  )..show(context);
```

Quick tip

If you use a lot of those properties, it makes sense to make a factory to help with your Flushbar's base appearance. Things like shadows, padding, margins, text styles usually don't change within the app. Take a look at FlushbarHelper class.

I made a helper class to facilitate the creation of the most common Flushbars.
```dart
FlushbarHelper.createSuccess({message, title, duration});
FlushbarHelper.createInformation({message, title, duration});
FlushbarHelper.createError({message, title, duration});
FlushbarHelper.createAction({message, title, duration flatButton});
FlushbarHelper.createLoading({message,linearProgressIndicator, title, duration, progressIndicatorController, progressIndicatorBackgroundColor});
FlushbarHelper.createInputFlushbar({textForm});
```
## Avatar Image
```dart
AvatarImage(
   backgroundImage: NetworkImage(
    'https://mdbootstrap.com/img/Photos/Avatars/img%20%281%29.jpg'),
     shape: AvatarImageShape.standard,
     size: ImageSize.LARGE,
     child: Text('Lucky'),
          backgroundColor: Colors.red,
      ),

AvatarImage(
    shape: AvatarImageShape.circle,
    child: Text('JP'),
    backgroundColor: Colors.red,
      ),
```
![avatar-image](https://github.com/jayeshpansheriya/awesome_extensions/blob/main/avatar-image.jpeg)
![avatar-image](https://github.com/jayeshpansheriya/awesome_extensions/blob/main/avatar-name.jpeg)

| Properties      | Description                                                                                                |
| --------------- | ---------------------------------------------------------------------------------------------------------- |
| child           | type of [Widget], which can have text , icon etc                                                           |
| backgroundColor | Color to fill the background of avatar                                                                     |
| foregroundColor | Color to change the textColor inside the avatar                                                            |
| radius          | size of the avatar                                                                                         |
| minRadius       | minimum size of the avatar                                                                                 |
| maxRadius       | maximun size of the avatar                                                                                 |
| size            | size of the avatar i.e `ImageSize.large`, `ImageSize.medium`, `ImageSize.small`                            |
| shape           | shape of the avatar i.e, `AvatarImageShape.standard`, `AvatarImageShape.circle`, `AvatarImageShape.square` |
| borderRadius    | extra radius to avatar shapes, not applicable to circular avatar                                           |


## Support
You liked this package? then give it a star. If you want to help then:

* Start this repository
* Send a Pull Request with new features
* Share this package
* Create issues if you find a Bug or want to suggest something

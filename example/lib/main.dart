import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:example/avtar_exp.dart';
import 'package:example/padding_ext.dart';
import 'package:example/shimmer_effect.dart';
import 'package:example/text_data.dart';
import 'package:example/widget_ext.dart';
import 'package:flutter/material.dart';

void main() {
  // Here we set the URL strategy for our web app.
  // It is safe to call this function when running on mobile or desktop as well.
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title ?? ''),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// Shimmer Effect
              ElevatedButton(
                  onPressed: () {
                    context.push(ShimmerEffectExample());
                  },
                  child: Text('Shimmer Effect')),

              20.0.heightBox,

              /// Text Theme Extensions
              ElevatedButton(
                  onPressed: () {
                    context.push(TextExt());
                  },
                  child: Text('Text Theme')),

              ///SizeBox Extensions
              20.0.heightBox,
              20.0.widthBox,

              Row(
                children: [
                  Text(
                    'Hello World',
                  ),
                  20.0.widthBox,
                  Text(
                    'Hello World',
                  )
                ],
              ),

              20.0.heightBox,

              /// Widget Extensions
              ElevatedButton(
                  onPressed: () {
                    context.push(WidgetExt());
                  },
                  child: Text('Widget Ext')),

              20.0.heightBox,

              ///Padding Extensions
              ElevatedButton(
                  onPressed: () {
                    context.push(PaddingExt());
                  },
                  child: Text('Pedding Ext')),

              20.0.heightBox,

              ///Avatar
              ElevatedButton(
                  onPressed: () {
                    context.push(AvatarExample());
                  },
                  child: Text('Avatar')),

              20.0.heightBox,

              ///Date Extensions
              Text('${dateTime.isToday}'),
              Text('${dateTime.isToday}'),
              Text('${dateTime.isSameDate(dateTime)}'),

              ///Platform Extension
              if (MyPlatform.isWeb)
                Text(
                  'Hello World',
                ).paddingAll(10.0),

              ///Show Platform dialog
              ElevatedButton(
                  onPressed: () {
                    context.showAlertDialog(
                        title: 'title',
                        message: 'message',
                        cancelButtonTitle: 'ok',
                        cancelTitleColor: Colors.green,
                        fontSize: 20);
                  },
                  child: Text('Show Dialog')),
            ],
          ),
        ));
  }
}

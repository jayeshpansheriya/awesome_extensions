import 'package:flutter/material.dart';
import 'package:awesome_extensions/awesome_extensions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            //Text Extensions
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.caption.bold,
            ),
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headline3.semiBold,
            ),
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headline3.regular,
            ),
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headline4.thin,
            ),

            //SizeBox Extensions
            20.0.heightSizedBox,

            Row(
              children: [
                Text(
                  'Hello World',
                ),
                20.0.widthSizedBox,
                Text(
                  'Hello World',
                )
              ],
            ),

            //Padding Extensions
            Text(
              'Hello World',
            ).paddingSymmetric(horizontal: 2.0, vertical: 5.0),

            Text(
              'Hello World',
            ).paddingAll(10.0),

            //Date Extensions
            Text('${dateTime.isToday}'),
            Text('${dateTime.isToday}'),
            Text('${dateTime.isSameDate(dateTime)}'),
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

import 'package:flutter/material.dart';
import 'package:gesture_plugin/gesture_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
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

  @override
  Widget build(BuildContext context) {
    GesturePlugin.gesture();
    return Scaffold(
      appBar: AppBar(
        title: Text("I  am  FlutterViewController"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: testTap,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void testTap() {
    print('i clicked flutterViewController');
  }


}

import 'package:flame/game.dart';
import 'package:flame/util.dart';
import 'package:flutter/material.dart';
import 'mathimino.dart';
import 'package:flame/components/component.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Util flameUtil = Util();
  flameUtil.fullScreen();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: "Mathimino"),
    );
  }
}

class GameRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Mathimino mathimino;

  @override
  void initState() {
    super.initState();
    mathimino = Mathimino();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mathimino.widget,
    );
  }
}

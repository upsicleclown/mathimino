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
      home: StartRoute(),
      //home: MyHomePage(title: "Mathimino"),
    );
  }
}

class GameRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/*
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
*/
class StartRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathimino'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Start'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PlayGameScreen()),
          );
        },
      )
          // child: ElevatedButton() button 'Initiative'
          ),
    );
  }
}

class PlayGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: Text('Back to main'),
      //),
      body: Center(
        child: new Column(
          children: <Widget>[
            new ElevatedButton(
              child: Text('Back to main menu'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            new ElevatedButton(
              child: Text('Play!'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GameScreen()),
                );
              },
            ),
          ],
          //new ElevatedButton(),
        ),
      ),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Mathimino mathimino;

  @override
  void initState() {
    super.initState();
    mathimino = Mathimino();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: mathimino.widget,
      appBar: AppBar(
        title: Text('Go!'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.pause_circle_filled),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PauseScreen()),
          );
        },
      ),
    );
  }
}

class PauseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Paused'),
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            new ElevatedButton(
              child: Text('Resume'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            new ElevatedButton(
              child: Text('Main menu'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

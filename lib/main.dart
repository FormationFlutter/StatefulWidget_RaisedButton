import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _sentence;
  bool _isActivated;

  @override
  void initState() {
    _sentence = 'Not Activated';
    _isActivated = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My App',
        home: Scaffold(
            body: Center(
                child : RaisedButton(
                  color: _isActivated ? Colors.white : Colors.lightBlue,
                  onPressed: () {
                    setState(() {
                      _isActivated = !_isActivated;
                      _sentence = _isActivated ?  'Activated' : 'Not Activated';
                    });
                  },
                  child: Text(_sentence),
                )
            )
        )
    );
  }
}
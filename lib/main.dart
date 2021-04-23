import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp>{
  var switchValue = false;
  String test = 'hello';
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
            body: Center(
                child: RaisedButton(
                  color: _color,
                  child: Text('$test'),
                  onPressed: (){
                    if (test == 'hello'){
                      setState(() {
                        test = "flutter";
                        _color = Colors.amber;
                      });
                    } else{
                      setState(() {
                        test = "hello";
                        _color = Colors.blue;
                      });
                    }
                  },
                )
            )
        )
    );
  }
}

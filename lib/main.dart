import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Numbering(),
    );
  }
}

class Numbering extends StatefulWidget {
  const Numbering({ Key? key }) : super(key: key);

  @override
  _NumberingState createState() => _NumberingState();
}

class _NumberingState extends State<Numbering> {
  int data =0;
  int data2 = 10;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body : Column(
        mainAxisAlignment : MainAxisAlignment.center,
        children : [ 
          Text('data - $data2'),
          Container(
            child : Center(
              child : RaisedButton(
                onPressed : (){
                  setState((){
                    data++;
                    data2--;
                  print('data - $data');
                  });
                 },
                child : Text('data - $data'),
              )
            )
          )
        ]
      )
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        // or simply save your changes to "hot reload" in a Flutter IDE)
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const KeyWord(),
    );
  }
}

class KeyWord extends StatefulWidget {
  const KeyWord ({ Key? key }) : super(key: key);

  @override
  State<KeyWord> createState() => _KeyWordState();
}

class _KeyWordState extends State<KeyWord> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
      title : Text('키워드 관리'),
            ),
      body : Container(
        margin : EdgeInsets.all(3.0),

        child: Column(
          children: [
            Header(),
            Expanded(
              child: Container(
                decoration : BoxDecoration(
                  border : Border.all(
                    color : Colors.lightBlue,
                  ),
                  borderRadius : BorderRadius.circular(10),
                ),
                margin : EdgeInsets.all(3.0),
                padding : EdgeInsets.all(25.0),
                child: SingleChildScrollView(
                  // itemBuilder: (BuildContext _context, int index){
                  //   return
                  child :Wrap(
                    spacing : 10,
                    children: [
                      Chipnew1("마일리지장학금"),
                      Chipnew1("카이퍼"),
                      Chipnew1("전전"),
                      Chipnew1("층장"),
                      Chipnew1("슬기짜기")
                    ]
                  ),
                  // } ,
                  // separatorBuilder : (BuildContext _context, int index){
                  //   return Container(height : 1, color: Color(0xff999999));
                  // },//아이템과아이템.
                  // itemCount: 25,
                ),
              ),
            ),
            MyKeyword(),
            Expanded(
              child: Container(
                margin : EdgeInsets.all(3.0),
                padding : EdgeInsets.all(25.0),
                decoration : BoxDecoration(
                  border : Border.all(
                    color : Colors.lightBlue,
                  ),
                  borderRadius : BorderRadius.circular(10),
                ),
                child: SingleChildScrollView(
                  // itemBuilder: (BuildContext _context, int index){
                  //   return
                  child :Wrap(
                    spacing : 10,
                    children: [
                      Chipnew1("마일리지장학금"),
                      Chipnew1("카이퍼"),
                      Chipnew1("전전"),
                      Chipnew1("층장"),
                      Chipnew1("슬기짜기"),
                    ]
                  ),
                  // } ,
                  // separatorBuilder : (BuildContext _context, int index){
                  //   return Container(height : 1, color: Color(0xff999999));
                  // },//아이템과아이템.
                  // itemCount: 25,
                ),
              ),
            ),
            // ListView.builder(
            //   itemBuilder: (BuildContext context, int index){
            //     return Column(
            //       children : <Widget>[
            //         ListTile(
            //           title : Text(index.toString())
            //         ),
            //         Divider(color : Colors.black38),
            //       ]
            //     );
            //   }
            // )
          ],
        ),
      )
    );
  }
}


Widget Header() {
    return Container(
      child : Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: TextField(
                decoration : InputDecoration(
                  border : OutlineInputBorder(),
                 labelText : '키워드 검색'
                ),
              ),
            ),
            Flexible(
              child: IconButton(
                onPressed: (){
            
                },
                icon: Icon(Icons.search),),
            )
            
          ],
        ),
      )
  );
}



// class Chip extends StatelessWidget {
//   const Chip({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List<String> inputs = [];
//     return  InputChip(
//               label : Text('index.toString()',
//                 style: TextStyle(
//                   color : Colors.black,
//               ),
//             ),
//               avatar: CircleAvatar(
//                 child : Text('index.toString()[0].toUpperCase()'),
//                 backgroundColor: Colors.white
//                 ),
//               selected: inputs.contains('index.toString()'),
//                 onSelected: (bool selected) {
//                   // setState(() {
//                   //   if (selected) {
//                   //     inputs.add(label);
//                   //   } else {
//                   //     inputs.removeWhere((value) {
//                   //       return value == label;
//                   //     });
//                   //   }
//                   // });
//                 },
//               );
//   }
// }

// class Chip2 extends StatelessWidget {
//   const Chip2 ({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     List<String> inputs = [];
//     return  InputChip(
//               label : Text('index.t',
//                 style: TextStyle(
//                   color : Colors.black,
//               ),
//             ),
//               avatar: CircleAvatar(
//                 child : Text('index.toString()[0].toUpperCase()'),
//                 backgroundColor: Colors.white
//                 ),
//               selected: inputs.contains('index.toString()'),
//                 onSelected: (bool selected) {
//                   // setState(() {
//                   //   if (selected) {
//                   //     inputs.add(label);
//                   //   } else {
//                   //     inputs.removeWhere((value) {
//                   //       return value == label;
//                   //     });
//                   //   }
//                   // });
//                 },
//               );
//   }
// }

Widget Chipnew1(String line){
  List<String> inputs = [];
  return InputChip(
              label : Text(line,
                style: TextStyle(
                  color : Colors.black,
              ),
            ),
              avatar: CircleAvatar(
                child : Text(line[0].toUpperCase()),
                backgroundColor: Colors.white
                ),
              selected: inputs.contains('index.toString()'),
                onSelected: (bool selected) {
                  // setState(() {
                  //   if (selected) {
                  //     inputs.add(label);
                  //   } else {
                  //     inputs.removeWhere((value) {
                  //       return value == label;
                  //     });
                  //   }
                  // });
                },
              );
}




Widget MyKeyword() {
    return Container(
      margin : EdgeInsets.all(5),
      child : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children :[          
          Text("내 키워드",
            style : TextStyle(
            fontSize :17,
            fontWeight: FontWeight.bold
            )
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child : RaisedButton(
            onPressed: () { },
            child : Text("비우기"),
            color : Colors.white, 
            ),
          ),
        ]
      ),
    );
}



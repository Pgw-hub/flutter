import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          leading : Icon(Icons.star),
          title: Text(//상단 바 이름 설정.
            '앱임',
            style: TextStyle(
              fontWeight: FontWeight.bold
              ),
              textAlign : TextAlign.center
          ),
          actions : [Icon(Icons.backspace_rounded)] // 위 오른쪽설정.
        ),
        body: Row(
          children: [
            Text('안녕',
             style: TextStyle( color : Colors.red) ),
            ElevatedButton(onPressed: (){}, child: Text('버튼'))
          ],
        )
      )
    );
  }
}


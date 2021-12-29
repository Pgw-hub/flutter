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
          leading : Icon(Icons.arrow_left_outlined),
          title: Text(//상단 바 이름 설정.
            '키워드 관리',
            style: TextStyle(
              fontWeight: FontWeight.bold
              ),
              textAlign : TextAlign.center
          ),
          actions : [Icon(Icons.backspace_rounded)] // 위 오른쪽설정.
        ),
        body:
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('내 키워드'),
                    Text('비우기')
                  ],  
                ),
                Text('키워드 정렬')
              ],
            ),
            Column(
              children: [
                    Container(
                      height : 30,
                      color : Colors.blue,
                      child : Row(
                      children: [
                        Text('추가하고 싶은 키워드 검색'),
                        Icon(Icons.security_update_good_rounded)
                      ],
                    )
                  ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child : SizedBox(
             height : 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.message),
                    Text('전체공지'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.star_border_outlined),
                    Text('중요공지'),
                  ],
                ),
                
              ],        
            ),
          )
        ) 
      )
    );
  }
}


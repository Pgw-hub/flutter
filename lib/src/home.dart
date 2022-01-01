

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxprac1/src/pages%5Cnormal/first.dart';

class Home  extends StatelessWidget {
  const Home ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text("라우트 관리 홈"),
      ),
      body : Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child : Text("일반적인 라우트"),
              onPressed : () {
                Get.to(FirstPage());
              }, 
            )
            
          ],
        )
      )
    ); 
  }
}
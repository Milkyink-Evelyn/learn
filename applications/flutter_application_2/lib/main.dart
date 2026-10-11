import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter组件初体验-无状态组件",
      home: Scaffold(
        appBar: AppBar(
          title: Text("顶部区域"),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Text("中部区域"),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          child: Center(
            child: Text("底部组件"),
          ),
        ),
      ),
    );
  }
}
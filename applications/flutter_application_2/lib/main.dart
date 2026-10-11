import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

//有状态组件 第一个类 对外
class MainPage extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}
//有状态组件 第二个类 对内
class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter组件初体验-有状态组件",
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
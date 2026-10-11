import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('头部区域'),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: GestureDetector(
              //点击事件
              onTap:() {
                print('点击了中部区域');
              },
              //双击事件
              onDoubleTap: () {
                print('双击了中部区域');
              },
              //长按事件
              onLongPress: () {
                print('长按了中部区域');
              },
              child: Text('中部区域'),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          child: Center(
            child: TextButton(
              onPressed: () {
                print('点击了底部区域');
              },
              child: const Text('底部区域'),
            ),
          ),
        ),
      )
    );
  }
}
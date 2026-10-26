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
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('登录'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Column(
            spacing: 15,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.amber,
                  filled: true,
                  hintText: "请输入账号",
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.amber,
                  filled: true,
                  hintText: "请输入密码",
                ),
              ),
              TextButton(onPressed: () {}, child: Text("登录")),
            ],
          ),
        )
      ),
    );
  }
}
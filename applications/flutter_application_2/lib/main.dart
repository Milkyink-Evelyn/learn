import 'package:flutter/material.dart';

<<<<<<< HEAD
main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() {
    print("createState阶段执行");
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    print("initState阶段执行");
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies阶段执行");
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MainPage oldWidget) {
    print("didUpdateWidget阶段执行");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print("deactivate阶段执行");
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose阶段执行");
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build阶段执行");
    return Container();
  }
}

// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print('无状态组件的构建函数执行');
//     return Container(
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: const Scaffold(
//           body: Center(
//             child: Text('Hello World!'),
//           ),
//         ),
//       )
//     );
//   }
// }
=======
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
>>>>>>> 81b2d67 (	new file:   applications/flutter_application_1/.gitignore)

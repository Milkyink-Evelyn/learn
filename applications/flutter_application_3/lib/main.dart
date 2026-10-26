import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    _getChannels();
  }
  List<Map<String, dynamic>> _list = [];
  void _getChannels() async {
    DioUtils util = DioUtils();
    Response<dynamic> response = await util.get("channels");
    Map<String, dynamic> res = response.data as Map<String, dynamic>;
    List data = res['data']['channels'] as List;
    _list = data.cast<Map<String, dynamic>>() as List<Map<String, dynamic>>;
    setState(() {});
    print(_list);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('频道管理'),
          centerTitle: true,
        ),
        body: Container(),
        ),
    );
  }
}

class DioUtils {
  final Dio _dio = Dio();

  DioUtils() {
    // _dio.options.baseUrl = 'https://geek.itheima.net/v1_0/';
    // _dio.options.connectTimeout = const Duration(seconds: 10);
    // _dio.options.sendTimeout = const Duration(seconds: 10);
    // _dio.options.receiveTimeout = const Duration(seconds: 10);
    _dio.options
      ..baseUrl = 'https://geek.itheima.net/v1_0/'
      ..connectTimeout = const Duration(seconds: 10)
      ..sendTimeout = const Duration(seconds: 10)
      ..receiveTimeout = const Duration(seconds: 10);

    _addInterceptors();
  }

  void _addInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          handler.next(options);
        },
        onResponse: (response, handler) {
          if (response.statusCode! >= 200 && response.statusCode! < 300) {
            handler.next(response);
            return;
          }
          handler.reject(DioException(requestOptions: response.requestOptions));
        },
        onError: (DioException e, handler) {
          handler.reject(e);
        },
      ),
    );
  }

  Future<Response<dynamic>> get(String url, {Map<String, dynamic>? params}) {
    return _dio.get(url, queryParameters: params);
  }

}

Future<String> fetchUserData() async {
  String data = await Future.delayed(Duration(seconds: 2), () {
    return "用户信息: 张三, 年龄20";
  });
  return data;
}

void main() async {
  print("开始获取用户信息...");
  
  String? userData = await fetchUserData();

  print(userData ?? "用户信息获取失败");
}
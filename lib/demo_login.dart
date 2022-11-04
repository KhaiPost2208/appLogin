import 'package:app_login/home_app.dart';
import 'package:flutter/material.dart';

class DemoLogin extends StatefulWidget {
  const DemoLogin({Key? key}) : super(key: key);

  @override
  State<DemoLogin> createState() => _DemoLoginState();

}

class _DemoLoginState extends State<DemoLogin> {
  bool _ShowPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/avatar.png',
                      //width: 50,
                      height: 90,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text(
                    'Sign to continue',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      labelText: ("Tên Đăng Nhập"),
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      TextField(
                        obscureText: !_ShowPass,
                        decoration: InputDecoration(
                          labelText: ("Mật Khẩu"),
                        ),
                      ),
                      GestureDetector(
                        onTap: onShow,
                        child: Text(
                          "Show",
                          style: TextStyle(color: Colors.pinkAccent),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              alignment: Alignment.centerRight,
              child: Column(
                children: [Text("Quên mật khẩu ?")],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: onSign,
                    child: Text("Đăng Nhập"),
                  ),
                  // ElevatedButton(
                  //     onPressed: null,
                  //     child: Text("Tạo Tài Khoản"),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: GestureDetector(
                onTap: Taomatkhau,
                child: Text("New user? Tạo tài khoản",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15,
                  color: Colors.pinkAccent),),
              ),
            )
          ],
        ),
      ),
    );
  }
  void onShow() {
    setState(() {
      _ShowPass = !_ShowPass;
    });
  }
  void onSign() {
  }
  void Taomatkhau() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}

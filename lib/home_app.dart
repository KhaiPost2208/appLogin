import 'main.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Tạo tài khoản"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          children: [
            Text("Tạo tài khoản",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: ("Tên hiển thị")
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: ("Email")
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: ("Số điện thoại")
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: ("Mật khẩu")
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: ("Xác nhận mật khẩu")
                ),
              ),
            ),
            ElevatedButton(onPressed: onSign,
                            child: Text("          Tạo tài khoản          "))
          ],
        ),
      ),
    );
  }
  void onSign() {

  }
}

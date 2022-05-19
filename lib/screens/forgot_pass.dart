import 'package:flutter/material.dart';
import 'new_login.dart';
import 'register_page.dart';

class ForgotPassScreen extends StatefulWidget {
  @override
  _ForgotPassScreen createState() => _ForgotPassScreen();
}

class _ForgotPassScreen extends State<ForgotPassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: <Widget>[
          Menu(),
          Text(
            'Reset your password:',
            style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 25),
          ),
          Column(
            children: [
              _TextBox(title: "enter your email"),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 500.0, top: 15, bottom: 0),
                child: Container(
                  height: 45,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                     /*TODO: send pass to email*/
                    },
                    child: Text(
                      'send pass to email',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _TextBox({String title = 'Title Menu'}){
  return Padding(
    padding: const EdgeInsets.only(
        left: 0.0, right: 500.0, top: 15, bottom: 0),
    //padding: EdgeInsets.symmetric(horizontal: 15),
    child: TextField(
      decoration: InputDecoration(
        hintText: '$title',
        filled: true,
        fillColor: Colors.blueGrey[50],
        labelStyle: TextStyle(fontSize: 12),
        contentPadding: EdgeInsets.only(left: 30),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey[50]),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey[50]),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:login/Widgets/Widgets.dart';
import 'login_page.dart';

/**
 * this class is a screen for the 'Forgot Password' state.
 */


Widgets _widgets = new Widgets();

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
              _widgets.MyTextBox(title: "enter your email"),
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

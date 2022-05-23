import 'package:flutter/material.dart';
import 'package:login/Widgets/Widgets.dart';
import 'login_page.dart';

/**
 * this class is a screen for the 'Register' state.
 */

Widgets _widgets = new Widgets();

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {

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
            'Create new account:',
            style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 25),
          ),
          Row(
            children: [
              Text(
                'already a member?',
                style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 14),
              ),
              SizedBox(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: Text(
                    'log in.',
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
          Column(
              children: [
                _widgets.MyTextBox(title: "first name"),
                _widgets.MyTextBox(title: "last name"),
                _widgets.MyTextBox(title: "username"),
                _widgets.MyTextBox(title: "email"),
                _widgets.MyTextBox(title: "phone number"),
                _widgets.MyTextBox(title: "password"),
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
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => LoginScreen()));
                      },
                      child: Text(
                        'Create account',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
          ])
        ],
      ),
    );
  }
}


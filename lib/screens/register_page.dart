import 'package:flutter/material.dart';
import 'new_login.dart';

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
              _TextBox(title: "first name"),
                _TextBox(title: "last name"),
                _TextBox(title: "username"),
                _TextBox(title: "email"),
                _TextBox(title: "phone number"),
                _TextBox(title: "password"),
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
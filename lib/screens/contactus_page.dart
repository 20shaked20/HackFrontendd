import 'package:flutter/material.dart';
import 'package:login/screens/login_page.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUs createState() => _ContactUs();
}

class _ContactUs extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery
                .of(context)
                .size
                .width / 8),
        children: [
            Menu(),
          Column(
            children: [
              Padding(
               padding: const EdgeInsets.only(left: 0, right: 0, top: 75, bottom: 50),
              child: Text("Contact us", style: TextStyle(color: Colors.black, fontSize: 50)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.email,size: 50),
                  Icon(Icons.phone,size: 50),
                  Icon(Icons.home,size: 50)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

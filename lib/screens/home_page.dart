import 'package:flutter/material.dart';
import 'package:login/Widgets/Widgets.dart';
import 'login_page.dart';
import 'chat_page.dart';

/**
 * this class is a screen for the 'Home' state.
 */

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String DropDownValue = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 8),
          children: [
            Row(children: [
              // _Languages(),
              Menu(),
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  child: Text(
                    'Welcome\n'
                    'ברוכים הבאים\n',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: Colors.deepPurpleAccent, fontSize: 50),
                  ),
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => ChatPage()));
                  },
                  label: const Text('Chat'),
                  icon: const Icon(Icons.chat),
                  backgroundColor: Colors.deepPurpleAccent,
                ),
              ],
            ),
          ]),
    );
  }
}

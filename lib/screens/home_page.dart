import 'package:flutter/material.dart';
import 'package:login/Widgets/Widgets.dart';
import 'login_page.dart';

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
              _Languages(),
              Menu(),
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 65,
                  width: 300,
                  child: Text(
                    'Welcome\n'
                    'ברוכים הבאים\n',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: Colors.deepPurpleAccent, fontSize: 20),
                  ),
                ),
              ],
            ),
          ]),
    );
  }

  Widget _Languages() {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0, bottom: 0),
      child: DropdownButton<String>(
          // borderRadius: BorderRadius.all(Radius.circular(0.0)),
          focusColor: Colors.transparent,
          /*removes the box behind it*/
          underline: SizedBox.shrink(),
          icon: Container(
            height: 25,
            child: Image.asset(
                '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/earth_icon.png'),
          ),
          onChanged: (String changedValue) {
            DropDownValue = changedValue;
            setState(() {
              DropDownValue;
            });
          },
          value: DropDownValue,
          items: <String>['English', 'Hebrew', 'Russian', 'Japanese ']
              .map((String value) {
            return new DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList()),
    );
  }
}
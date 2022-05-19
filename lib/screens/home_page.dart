import 'package:flutter/material.dart';
import 'new_login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String newValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 8),
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 0, bottom: 0),
                    child: DropdownButton<String>(
                        // borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        focusColor: Colors.transparent, /*removes the box behind it*/
                        underline: SizedBox.shrink(),
                        icon: Icon(Icons.facebook),
                        onChanged: (String changedValue) {
                          newValue = changedValue;
                          setState(() {
                            newValue;
                          });
                        },
                        value: newValue,
                        items: <String>['Chocolate', 'Vanilla', 'ButterCream']
                            .map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Icon(Icons.facebook),
                          );
                        }).toList()),
                  ),
                Menu(),
              ],
            ),
          ]),
    );
  }
}

/**
 *    UserAccountsDrawerHeader(
    accountName: Text("Abhishek Mishra"),
    accountEmail: Text("abhishekm977@gmail.com"),
    currentAccountPicture: CircleAvatar(
    backgroundColor: Colors.orange,
    child: Text(
    "Help",
    style: TextStyle(fontSize: 40.0),
    ),
    ),
    ),
 */

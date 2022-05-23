import 'package:flutter/material.dart';
import 'package:login/Widgets/Widgets.dart';

/**
 * this class is a screen for the 'Login' state.
 */

Widgets _widgets = new Widgets();

class LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  String DropDownValue = 'English';

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
          Row(
            children: [
              // _Languages(),
              Menu(),
            ],
          ),
          _widgets.Logo(),
          _widgets.login(context),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _widgets.itembar(
                  title: 'Home', screen: screens.Home, context: context),
              _widgets.itembar(
                  title: 'About us',
                  screen: screens.About_us,
                  context: context),
              _widgets.itembar(
                  title: 'Contact us',
                  screen: screens.Contact_us,
                  context: context),
              _widgets.itembar(
                  title: 'Files', screen: screens.Help, context: context),
            ],
          ),
        ],
      ),
    );
  }
}

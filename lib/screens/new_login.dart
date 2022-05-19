import 'package:flutter/material.dart';
import 'home_page.dart';
import 'register_page.dart';
import 'forgot_pass.dart';

enum screens { Home, About_us, Contact_us, Help }

class LoginScreen extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
          Menu(),
          Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 200, top: 25, bottom: 0),
            child: Container(
              height: 100,
              child: Image.asset(
                  '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/Pole-removebg-preview.png'),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 150, right: 0, top: 0, bottom: 15),
            child: Container(
              height: 100,
              child: Image.asset(
                  '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/Fole-removebg-preview.png'),
            ),
          ),
          _login(context),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _itembar(title: 'Home', screen: screens.Home, context: context),
              _itembar(
                  title: 'About us',
                  screen: screens.About_us,
                  context: context),
              _itembar(
                  title: 'Contact us',
                  screen: screens.Contact_us,
                  context: context),
              _itembar(title: 'Help', screen: screens.Help, context: context),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _itembar(
    {String title = 'Title Menu', screens screen, BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(right: 75),
    child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Column(
        children: [

          TextButton(
            child: Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            onPressed: () {
              switch (screen) {
                case screens.Home:
                  {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  }
                  break;
                case screens.About_us:
                  {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  }
                  break;
                case screens.Contact_us:
                  {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  }
                  break;
                case screens.Help:
                  {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  }
                  break;
                default:
                  {}
                  break;
              }
              ;
            },
          ),
        ],
      ),
    ),
  );
}

Widget _login(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(
            left: 275.0, right: 275.0, top: 50, bottom: 0),
        //padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Enter email or Phone number',
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
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 275, right: 275, top: 15, bottom: 0),
        // padding: EdgeInsets.symmetric(horizontal: 450),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            // counterText: 'Forgot password?',
            suffixIcon: Icon(
              Icons.visibility_off_outlined,
              color: Colors.grey,
            ),
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
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => ForgotPassScreen()));
        },
        child: Text(
          'Forgot Password',
          style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 14),
        ),
      ),
      Container(
        height: 45,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(20)),
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomePage()));
          },
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      SizedBox(
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => RegisterScreen()));
          },
          child: Text(
            'New User? Create Account',
            style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 14),
          ),
        ),
      ),

      /* this is the login from other options */
      Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 0, bottom: 0),
            child: TextButton(
              onPressed: () {
                //TODO Google login SCREEN GOES HERE
              },
              child: Container(
                height: 20,
                child: Image.asset(
                    '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/google.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 0, bottom: 0),
            child: TextButton(
              onPressed: () {
                //TODO facebook login SCREEN GOES HERE
              },
              child: Icon(Icons.facebook),
            ),
          ),
        ],
      )),
    ],
  );
}

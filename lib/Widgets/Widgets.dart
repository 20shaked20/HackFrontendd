import 'package:flutter/material.dart';
import 'package:login/screens/home_page.dart';
import 'package:login/screens/register_page.dart';
import 'package:login/screens/forgot_pass.dart';
import 'package:login/screens/aboutus_page.dart';
import 'package:login/screens/contactus_page.dart';
import 'package:login/screens/pdf_reader_test.dart';

/**
 * This class is the widgets class we created for the application.
 */

enum screens { Home, About_us, Contact_us, Help }

class Widgets {
  /**
   * this is the logo widget for our login screen.
   */
  Widget Logo() {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 0, right: 200, top: 25, bottom: 0),
        // padding: const EdgeInsets.,
        child: Container(
          height: 100,
          child: Image.asset(
              '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/Pole-removebg-preview.png'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 150, right: 0, top: 0, bottom: 15),
        child: Container(
          height: 100,
          child: Image.asset(
              '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/Fole-removebg-preview.png'),
        ),
      ),
    ]);
  }

  /**
   * a recreation of a text box.
   */
  Widget MyTextBox({String title = 'Title Menu'}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
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

  /**
   * the items displayed on the bar menu.
   */
  Widget itembar(
      {String title = 'Title Menu', screens screen, BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
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
                /*TODO: fix route navigation to avoid pushing again the same route*/
                switch (screen) {
                  case screens.Home:
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomePage()));
                      // Navigator.pop(context);
                    }
                    break;
                  case screens.About_us:
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => AboutUs()));
                    }
                    break;
                  case screens.Contact_us:
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ContactUs()));
                    }
                    break;
                  case screens.Help:
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PDFReader()));
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

  /**
   * the login state.
   */
  Widget login(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          // padding: const EdgeInsets.only(
          //     left: 275.0, right: 275.0, top: 50, bottom: 0),
          padding: EdgeInsets.symmetric(horizontal: 250),
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
          // padding:
          //     const EdgeInsets.only(left: 275, right: 275, top: 15, bottom: 0),
          padding: EdgeInsets.symmetric(horizontal: 250, vertical: 15),
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
          // height: 45,
          // width: 300,
          // margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(20)),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomePage()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 2),
              child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
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
}

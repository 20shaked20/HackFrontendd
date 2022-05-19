import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: const EdgeInsets.only(top: 50.0),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                // Navigator.pop(context); //TODO: move them to home.
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                // Navigator.pop(context); //TODO: change to settings.
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                // Navigator.pop(context); //TODO: pop our details
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        /*edit drawer icon*/
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.help),
            );
          },
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: SingleChildScrollView(
            child: Row(
          children: [
            /*Pole*/
            Padding(
              padding: const EdgeInsets.only(
                  left: 550, right: 0, top: 0, bottom: 10),
              child: Container(
                height: 65,
                child: Image.asset(
                    '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/Pole-removebg-preview.png'),
              ),
            ),
            /*Fole*/
            Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 0, top: 50, bottom: 15),
              child: Container(
                height: 65,
                child: Image.asset(
                    '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/Fole-removebg-preview.png'),
              ),
            ),
          ],
        )),
      ),
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 450, right: 450, top: 300, bottom: 0),
                // padding: EdgeInsets.symmetric(horizontal: 450),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Enter your username'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 450.0, right: 450.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password'),
                ),
              ),
              TextButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style:
                      TextStyle(color: Colors.deepPurpleAccent, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 250,
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
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                child: TextButton(
                  onPressed: () {
                    //TODO Register SCREEN GOES HERE
                  },
                  child: Text('New User? Create Account'),
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
          ),
        ),
      );
  }
}

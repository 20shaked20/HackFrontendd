import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

final List<String> imgList = [
  '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/GiladLivshitz.jpeg',
  '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/OfriTavor.jpeg',
  '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/ShakedLevi.jpeg',
  '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/DanielRosenberg.jpeg',
  '/Users/Shaked/AndroidStudioProjects/Hakaton/assets/images/MatanShimon.jpeg'
];

final String gilad_info =
    'Gilad has graduated from Magshimim program and now is a mentor there. \n'
    'He has experience in couple of languages in between them are japanese, russian, english and hebrew \n'
    'Some of his hobbies are - poetry, coding and hanging out with his friends \n'
    'Knowledge -> C#, CSS, JavaScript, Java, Python, HTML';

final String ofri_info = '';

final String shaked_info = '';

final String daniel_info = '';

final String matan_info = '';

final List<Widget> Employee = [
  Worker_Information("Gilad Livshitz", "Team Leader", gilad_info),
  Worker_Information("Ofri Tavor", "Team Leader", ofri_info),
  Worker_Information("Shaked Levi", "Team Leader", shaked_info),
  Worker_Information("Daniel Rosenberg", "Team Leader", daniel_info),
  Worker_Information("Matan Shimon", "Team Leader", matan_info)
];

final themeMode = ValueNotifier(2);

class AboutUs extends StatelessWidget {
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
              // _Languages(),
              Menu(),
            ],
          ),
          ImageSlider(),
          _WhatWeDo(),
        ],
      ),
    );
  }
}

Widget ImageSlider() {
  return Container(
    child: CarouselSlider.builder(
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: false,
        viewportFraction: 1,
        // scrollDirection: Axis.vertical,
      ),
      itemCount: (imgList.length),
      itemBuilder: (context, index, realIdx) {
        return Row(
          children: [
            Container(
              // height: 400,
              // width: 300,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
              // child: Image.network(imgList[index], fit: BoxFit.fill), */for http url*/
              child: Image.asset(
                imgList[index],
                fit: BoxFit.contain,
              ),
            ),
            Employee[index],
          ],
        );
      },
    ),
  );

}

Widget _WhatWeDo() {
  return Column(
    children: [
      Text("What We do: ",style: TextStyle(fontSize: 28)),
      _What_We_Do_Box('File Translate', 'bla', 'blablabal'),
    ],
  );
}

Widget _What_We_Do_Box(String name, String title, String data) {
  return Container(
      height: 400,
      width: 750,
      //   margin: EdgeInsets.symmetric(horizontal: 0, vertical: 25),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
      child: Padding(
          padding: EdgeInsets.only(bottom: 150),
          child: Column(
            children: [
              Expanded(
                child: Text(
                  '\n' + name,
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
              ),
              Expanded(
                child: Text(' ' + title,
                    style: TextStyle(color: Colors.blueGrey[600])),
              ),
              Expanded(
                child: Text(' ' + data),
              ),
            ],
          )));
}

Widget Worker_Information(String name, String title, String data) {
  return Expanded(
      child: Container(
          // height: 400,
          // width: 750,
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
          child: Padding(
              padding: EdgeInsets.only(bottom: 200),
              child: Column(
                children: [
                  Expanded(
                    child: Text(
                      '\n' + name,
                      style: TextStyle(color: Colors.black, fontSize: 28),
                    ),
                  ),
                  Expanded(
                    child: Text(' ' + title,
                        style: TextStyle(color: Colors.blueGrey[600])),
                  ),
                  Expanded(
                    child: Text(' ' + data),
                  ),
                ],
              ))));
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

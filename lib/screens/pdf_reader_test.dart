import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

final List<String> English = [
  'assets/files/missim_eng.png',
];

final List<String> Hebrew = [
  'assets/files/missim_heb.png',
];


final themeMode = ValueNotifier(2);

class PDFReader extends StatefulWidget {
  @override
  _PDFReader createState() => _PDFReader();
}

class _PDFReader extends State<PDFReader> {
  String DropDownValue = 'English';
  static Widget temp = ImageSlider(English);

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
              _Languages(),
              Menu(),
            ],
          ),
          temp,
        ],
      ),
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
                'assets/images/earth_icon.png'),
          ),
          onChanged: (String changedValue) {
            DropDownValue = changedValue;
            switch(DropDownValue){
              case 'English':{
                  temp = ImageSlider(English);
              }break;
              case 'Hebrew':{
                temp = ImageSlider(Hebrew);
              }break;
            }
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
Widget ImageSlider(List <String> Img_Language) {
  return Container(
    child: CarouselSlider.builder(
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: false,
        viewportFraction: 1,
        scrollDirection: Axis.vertical,

      ),
      itemCount: (Img_Language.length),
      itemBuilder: (context, index, realIdx) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // height: 400,
              // width: 300,
              // margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              // child: Image.network(imgList[index], fit: BoxFit.fill), */for http url*/
              child: Image.asset(
                Img_Language[index],
                fit: BoxFit.contain,
              ),
            ),
          ],
        );
      },
    ),
  );

}

/*English*/
final List<Widget> imageSliders1 = English
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
                  'No. ${English.indexOf(item)} image',
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

/*Hebrew*/
final List<Widget> imageSliders2 = Hebrew
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
                  'No. ${English.indexOf(item)} image',
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


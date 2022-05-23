import 'package:flutter/material.dart';

class RoundedBorderDropdown extends StatelessWidget {
  final List<String> _dropdownValues = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five"
  ]; //The list of values we want on the dropdown

  @override
  Widget build(BuildContext context) {
    String DefaultDropDownValue = 'English';
    return Scaffold(
      appBar: AppBar(
        title: Text('Rounded Border Button in AppBar'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
                color: Colors.red, style: BorderStyle.solid, width: 0.80),
          ),
          child: DropdownButton<String>(
            // borderRadius: BorderRadius.all(Radius.circular(0.0)),
              value: DefaultDropDownValue,
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
      ),
    );
  }
}
import 'package:flutter/material.dart';

//input decoration
const textInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
    labelStyle: TextStyle(
        color: Colors.grey,
        fontSize: 24
    ),
    border: InputBorder.none
);

//gender drop down button
List<String> gender = ['Male', 'Female'];

class GenderButton extends StatefulWidget {
  @override
  _GenderButtonState createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  String _selectedGender;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(
          left: 8,
        ),
        child: DropdownButton(
          elevation: 0,
          hint: Text(
            'Gender'
          ),
          value: _selectedGender,
          items: gender.map(
                (String dropDownStringItem) {
              return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(
                    dropDownStringItem
                  )
              );
            },
          ).toList(),
          onChanged: (String selectedGender) {
            setState(() {
              _selectedGender = selectedGender;
            });
          },
        ),
      ),
    );
  }
}

//orientation dropdown button
List<String> orientation = ['Straight', 'Gay', 'Bisexual'];
String _selectedOrientation;

class OrientationButton extends StatefulWidget {
  @override
  _OrientationButtonState createState() => _OrientationButtonState();
}

class _OrientationButtonState extends State<OrientationButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(
          left: 8,
        ),
        child: DropdownButton(
          autofocus: false,
          elevation: 0,
          hint: Text(
            'Sexual Orientation'
          ),
          value: _selectedOrientation,
          items: orientation.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(
                  dropDownStringItem
                )
            );
          }).toList(),
          onChanged: (String selectedOrientation) {
            setState(() {
              _selectedOrientation = selectedOrientation;
            });
          },
        ),
      ),
    );
  }
}

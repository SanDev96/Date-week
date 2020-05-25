import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterdateweek/Backend/text_controllers/controllers.dart';
import 'package:flutterdateweek/utilities/ui_utils.dart';

class Bio extends StatefulWidget {
  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          TextFormField(
            decoration: textInputDecoration.copyWith(
                labelText: 'Full Name'
            ),
          ),
          Divider(
            thickness: 4,
            color: Colors.orange,
            height: 24,
          ),
          TextFormField(
            controller: userController,
            decoration: textInputDecoration.copyWith(
                labelText: 'Username'
            ),
          ),
          Divider(
            thickness: 4,
            color: Colors.orange,
            height: 24,
          ),
          TextFormField(
            controller: emailController,
            decoration: textInputDecoration.copyWith(
                labelText: 'Email'
            ),
          ),
          Divider(
            thickness: 4,
            color: Colors.orange,
            height: 24,
          ),
          TextFormField(
            decoration: textInputDecoration.copyWith(
                labelText: 'Phone Number'
            ),
          ),
          Divider(
            thickness: 4,
            color: Colors.orange,
            height: 24,
          ),
          TextFormField(
            controller: passwordController,
            decoration: textInputDecoration.copyWith(
                labelText: 'Password'
            ),
            obscureText: true,
          ),
          Divider(
            thickness: 4,
            color: Colors.orange,
            height: 24,
          ),
          TextFormField(
            decoration: textInputDecoration.copyWith(
                labelText: 'Country'
            ),
          ),
          Divider(
            thickness: 4,
            color: Colors.orange,
            height: 24,
          ),
          TextFormField(
            decoration: textInputDecoration.copyWith(
                labelText: 'State'
            ),
          ),
          Divider(
            thickness: 4,
            color: Colors.orange,
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GenderButton(),
              VerticalDivider(
                thickness: 4,
                color: Colors.black,
              ),
              OrientationButton(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}


class Pictures extends StatefulWidget {
  @override
  _PicturesState createState() => _PicturesState();
}

class _PicturesState extends State<Pictures> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Divider(
          thickness: 4,
          color: Colors.orange,
          height: 24,
        ),
        Text(
          'Please upload a minimum of 5 pictures',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Aladin-Regular'
          ),
        ),
        FlatButton(
            onPressed: () {},
            color: Colors.white,
            child: Text(
              'Gallery',
              style: TextStyle(
                  fontFamily: 'Aladin-Regular',
                  color: Colors.deepOrange
              ),
            )
        ),
        Divider(
          thickness: 4,
          color: Colors.orange,
          height: 24,
        )
      ],
    );
  }
}


class DateWeek extends StatefulWidget {
  @override
  _DateWeekState createState() => _DateWeekState();
}

class _DateWeekState extends State<DateWeek> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        textCapitalization: TextCapitalization.sentences,
        minLines: 10,
        maxLines: 50,
        decoration: textInputDecoration.copyWith(
            labelText: 'Please write extensively about your date orientation'
        ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}


class AccountInfo extends StatefulWidget {
  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Text(
            'Please enter your bank details',
            style: TextStyle(fontSize: 25, fontFamily: "Aladin-Regular"),
          ),
          SizedBox(
            height: 24,
          ),
          TextFormField(
            decoration: textInputDecoration.copyWith(
                labelText: 'Bank'
            ),
          ),
          Divider(
            thickness: 4,
            color: Colors.orange,
            height: 24,
          ),
          TextFormField(
            decoration: textInputDecoration.copyWith(
                labelText: 'Account Name'
            ),
          ),
          Divider(
            thickness: 4,
            color: Colors.orange,
            height: 24,
          ),
          TextFormField(
            decoration: textInputDecoration.copyWith(
                labelText: 'Account Number'
            ),
          ),
          Divider(
            thickness: 4,
            color: Colors.orange,
            height: 24,
          ),
          TextFormField(
            decoration: textInputDecoration.copyWith(
                labelText: 'Bank Verification Number'
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}


class DateFee extends StatefulWidget {
  @override
  _DateFeeState createState() => _DateFeeState();
}

List<int> price = [0, 200, 400, 1000, 2000, 5000, 10000, 25000];

class _DateFeeState extends State<DateFee> {
  Map<String, String> userMap = Map<String, String>();
  // final databaseReference = FirebaseDatabase.instance.reference();
  int groupValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'kindly select the amount for which you would date anyone for a week',
            style: TextStyle(fontSize: 24, fontFamily: 'Aladin-Regular'),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 24,
        ),
        GridView.count(
          children: List.generate(8, (index) {
            return Row(
              children: <Widget>[
                Radio(
                  activeColor: Colors.orangeAccent,
                  groupValue: groupValue,
                  value: index,
                  onChanged: (index) {
                    setState(
                          () {
                        groupValue = index;
                      },
                    );
                  },
                ),
                Text(
                  '\$ ' + price[index].toString(),
                  style: TextStyle(fontSize: 16, fontFamily: 'Aladin-Regular'),
                ),
              ],
            );
          } ),
          crossAxisCount: 3,
          shrinkWrap: true,
        )
      ],
    );
  }
}

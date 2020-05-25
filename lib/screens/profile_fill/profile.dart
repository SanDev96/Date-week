import 'package:flutter/material.dart';
import 'package:flutterdateweek/screens/profile_fill/profile_views.dart';

class ProfileFill extends StatefulWidget {
  @override
  _ProfileFillState createState() => _ProfileFillState();
}

class _ProfileFillState extends State<ProfileFill> {

  Widget child = Bio();

  int selected = 0;

  List<String> menu = [
    'Bio',
    'Pictures',
    'Date Week',
    'Account Info',
    'Date Fee'
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 5;
    final double height = MediaQuery.of(context).size.height / 2;

    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.brown[900],
                    Colors.brown[800],
                    Colors.brown[400]
                  ]
              )
          ),
          child: SafeArea(
            child: Center(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SizedBox(
                      height: 64,
                      child: Text('Date Week Profile', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32
                      ),),
                    ),
                  ),
                  SizedBox(
                    width: width / 6,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white30,
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                                menu[selected],
                                style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            SizedBox(
                                height: height,
                                child: SingleChildScrollView(
                                    child: child
                                )
                            ),
                            Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    switch (selected) {
                                      case 0 : {
                                        child = Pictures();
                                        selected = 1;
                                      } break;
                                      case 1 : {
                                        child = DateWeek();
                                        selected = 2;
                                      } break;
                                      case 2 : {
                                        child = AccountInfo();
                                        selected = 3;
                                      } break;
                                      case 3 : {
                                        child = DateFee();
                                        selected = 4;
                                      } break;
                                      case 4 : {
                                        Navigator.of(context).pushReplacementNamed('/home');
                                      } break;
                                    }
                                  });
                                },
                                color: Colors.white10,
                                child: Text(
                                  'Continue',
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 24
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}

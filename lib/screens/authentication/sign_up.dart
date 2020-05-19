import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 3;
    final double height = MediaQuery.of(context).size.height * 3;

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
              child: SizedBox(
                height: height / 4,
                width: width / 4,
                child: SingleChildScrollView(
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
                          ListTile(
                            leading: Icon(Icons.brightness_1, size: 32),
                            title: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            trailing: Icon(Icons.brightness_1, size: 32,),
                          ),
                          SizedBox(height: 20,),
                          Form(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 24.0,),
                                  TextFormField(
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                                      labelText: 'Username',
                                      labelStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 24
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 4,
                                    color: Colors.grey,
                                    height: 24,
                                  ),
                                  TextFormField(
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                                      labelText: 'Email',
                                      labelStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 24
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 4,
                                    color: Colors.grey,
                                    height: 24,
                                  ),
                                  TextFormField(
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 24
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    obscureText: true,
                                  ),
                                  Divider(
                                    thickness: 4,
                                    color: Colors.grey,
                                    height: 32,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(context , '/home');
                                      },
                                      color: Colors.white10,
                                      child: Text(
                                        'Sign Up',
                                        style: TextStyle(
                                            color: Colors.brown,
                                            fontSize: 24
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
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
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white30,
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.brightness_1, size: 32),
                        title: Text(
                          'Date Week',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 27,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        trailing: Icon(Icons.brightness_1, size: 32,),
                      ),
                      Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/signUp');
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.brown
                              ),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/signIn');
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.brown
                              ),
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
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

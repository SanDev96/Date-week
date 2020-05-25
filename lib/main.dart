import 'package:flutter/material.dart';
import 'package:flutterdateweek/screens/authentication/sign_in.dart';
import 'package:flutterdateweek/screens/authentication/sign_up.dart';
import 'package:flutterdateweek/screens/home/home.dart';
import 'package:flutterdateweek/screens/landing_page.dart';
import 'package:flutterdateweek/screens/profile_fill/profile.dart';
import 'package:flutterdateweek/utilities/practise.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/landing',
  routes: {
    '/landing':(context) => Landing(),
    '/signIn':(context) => SignIn(),
    '/signUp':(context) => SignUp(),
    '/home':(context) => Home(),
    '/profile':(context) => ProfileFill(),
  },
));

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future signIn (String email, password) async {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  await _auth.signInWithEmailAndPassword(email: email, password: password);
}
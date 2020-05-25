import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future signup (String email, password) async {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  await _auth.createUserWithEmailAndPassword(email: email, password: password);
}
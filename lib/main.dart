import 'package:flutter/material.dart';
import 'pages/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:
        false, // for removing the default banner from app
    home: Login(),
  ));
}


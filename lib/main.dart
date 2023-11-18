import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fobliveuser/screens/Navigator/navigationpage.dart';
import 'package:fobliveuser/screens/homepage.dart';

void main() {


  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.indigo.shade50, // set color for the status bar
      statusBarBrightness: Brightness.dark, // set brightness for the status bar text
      systemNavigationBarColor: Colors.black
  ));



  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: navbar(),
  ));
}





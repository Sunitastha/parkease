import 'package:flutter/material.dart';
import 'package:parkease/SBBook.dart';
import 'package:parkease/SBParking.dart';
import 'package:parkease/SPParking.dart';
import 'package:parkease/sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      initialRoute: 'sample',
        routes: {
       'sample':(context)=>Sample(),
          'SBParking':(context)=>SBParking(),
          'SPParking':(context)=>SPParking(),
          'SBBook':(context)=>SBBook(),
          'SPBook':(context)=>SBBook(),



        }
    );
  }
}

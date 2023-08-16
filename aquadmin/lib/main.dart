import 'package:aquadmin/pages/client_dash.dart';
import 'package:flutter/material.dart';
import 'package:aquadmin/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
      routes: {
        'client_dash':(_) =>  ClientDash(),
      },
    ); //MaterialApp
  }
}


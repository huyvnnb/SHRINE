import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

class ShrineApp extends StatelessWidget{
  const ShrineApp({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login' : (BuildContext context) => const LoginPage(),
        '/' :(BuildContext context) => HomePage(), 
      }, 
    );
  }
}
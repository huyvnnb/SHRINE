import 'package:flutter/material.dart';
import 'package:mdc01/login.dart';

class ShrineApp extends StatelessWidget{
  const ShrineApp({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('HOME', 
              style: TextStyle(color: Color.fromARGB(255, 3, 3, 3), fontWeight: FontWeight.bold))
            ),
            //backgroundColor: Color.fromARGB(255, 46, 101, 252),
            //backgroundColor: Colors.orange,
          ),
          // body: Container(
          //   decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight,
          //       colors: [Color.fromARGB(255, 36, 134, 213), Color.fromARGB(255, 59, 60, 171), Color.fromARGB(255, 119, 27, 137)],
          //     ),
          //   ),
          // ),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login' : (BuildContext context) => LoginPage(key),
      },
    );
  }
}
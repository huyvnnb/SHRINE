import 'package:flutter/material.dart';
import 'colors.dart';
import 'login.dart';
import 'home.dart';

class ShrineApp extends StatelessWidget{
  ShrineApp({Key? key}) : super(key:key);

  final ThemeData _kShrineTheme = _buildShrineTheme();

  static ThemeData _buildShrineTheme(){
    final ThemeData base = ThemeData.light(useMaterial3: true);
    return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
        primary: kShrinePink100,
        onPrimary: kShrineBrown900,
        secondary: kShrineBrown900,
        error: kShrineErrorRed,
      ),
      textTheme: _buildShrineTextTheme(base.textTheme),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: kShrinePink100,
      ),
    );
  }

  static TextTheme _buildShrineTextTheme(TextTheme base){
    return base
      .copyWith(
        headlineSmall: base.headlineSmall!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        titleLarge: base.titleLarge!.copyWith(
          fontSize: 14.0,
        ),
        bodySmall: base.bodySmall!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyLarge: base.bodySmall!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kShrineBrown900,
        bodyColor: kShrineBrown900,
      );
  }
  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login' : (BuildContext context) => const LoginPage(),
        '/' :(BuildContext context) => HomePage(), 
      }, 
      theme: _kShrineTheme,
    );
  }
}
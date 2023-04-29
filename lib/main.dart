import 'package:flutter/material.dart';
import 'package:flutter_nft_ui_desgin/colors/colors.dart';
import 'package:flutter_nft_ui_desgin/screens/path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT Desgin',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: dark,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            color: white,
            fontWeight: FontWeight.w600,
          ),
          headline3: TextStyle(
            fontSize: 24,
            color: primaryColorLight,
            fontWeight: FontWeight.w400,
          ),
          headline4: TextStyle(
            fontSize: 22,
            color: primaryColorLight,
            fontWeight: FontWeight.w400,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            color: primaryColorLight,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            fontSize: 14,
            color: white,
            fontWeight: FontWeight.w600,
          ),
          caption: TextStyle(
            fontSize: 14,
            color: primaryColorLight,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: const Intro(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islamic_app/home.dart';
import 'package:islamic_app/sura_details.dart';
import 'hadeth_details.dart';
import 'splash_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          Home.routeName: (context) => Home(),
          SuraDetails.routeName: (context) => SuraDetails(),
          HadethDetails.routeName: (context) => HadethDetails(),
        });
  }
}
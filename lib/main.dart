import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamic_app/home.dart';
import 'package:islamic_app/providers/my_provider.dart';
import 'package:islamic_app/sura_details.dart';
import 'package:provider/provider.dart';
import 'hadeth_details.dart';
import 'splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main(){
  runApp(ChangeNotifierProvider<MyProvider>(
    create: (context) => MyProvider() ,
      child: MyApp()));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(

        title: 'Localizations Sample App',
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'), // English
          Locale('ar'), // Arabic
        ],
        locale: Locale(provider.languageCode),
        themeMode: ThemeMode.light,
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
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/tabs/ahadeth_tab.dart';
import 'package:islamic_app/tabs/quran_tab.dart';
import 'package:islamic_app/tabs/radio_tab.dart';
import 'package:islamic_app/tabs/sebha_tab.dart';
import 'package:islamic_app/tabs/setting_tab.dart';

class Home extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
int index=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bacground.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
       backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'إسلامي',
            style: GoogleFonts.elMessiri(
                color: Color(0xff242424),
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          iconSize: 30,
          showUnselectedLabels:false,
          showSelectedLabels: false,
          currentIndex: index,
          onTap: (value) {
            index=value;
            setState(() {});
          },
          backgroundColor: Color(0xffB7935F),
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_moshaf.png')),label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ic_ahadeth.png')),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: ''),
          ],
        ),
      ),
    );
  }
List<Widget>tabs=[
  QuranTab(),
  SebhaTab(),
  RadioTab(),
  AhadethTab(),
  SettingTab(),
];
}

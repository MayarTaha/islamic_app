import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sura_model.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName='suradetails';
  const SuraDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var suraModel=ModalRoute.of(context)!.settings.arguments as SuraModel;
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
            suraModel.name,
            style: GoogleFonts.elMessiri(
                color: Color(0xff242424),
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sura_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SuraDetails extends StatefulWidget {
  static const String routeName = 'suradetails';

  SuraDetails({Key? key}) : super(key: key);

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadfile(suraModel.index + 1);
    }

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
          iconTheme: IconThemeData(size: 40),
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                   ' سورة ${suraModel.name}',
                    style: GoogleFonts.elMessiri(
                        color: Color(0xff242424),
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '_${suraModel.index+1}',
                    style: GoogleFonts.elMessiri(
                        color: Color(0xff242424),
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                color: Color(0xffB7935F),
                indent: 40,
                endIndent: 40,
              ),
              Expanded(
                child: Card(
                  color: Colors.white60.withOpacity(.7),
                 shape: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(12),
                   borderSide: BorderSide(color: Colors.transparent)
                 ),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Text('(${index + 1}) ${verses[index]}',style:GoogleFonts.elMessiri(
                            color: Color(0xff242424),
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,),
                      );
                    },
                    itemCount: verses.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadfile(int index) async {
    String sura = await rootBundle.loadString('assets/files/$index.txt');
    List<String> lines = sura.trim().split('\n');
    verses = lines;
    print(sura);
    setState(() {});
  }
}

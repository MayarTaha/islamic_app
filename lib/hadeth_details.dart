import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HadethDetails extends StatefulWidget {
   HadethDetails({Key? key}) : super(key: key);
 static const String routeName='HadethDetails';
  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    int indx=ModalRoute.of(context)!.settings.arguments as int ;
    if (verses.isEmpty) {
      loadfile(indx);
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
                    ' الحديث رقم ${indx + 1}',
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
                        Text('$verses',style:GoogleFonts.elMessiri(
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
    String hadeth = await rootBundle.loadString('assets/files/hadeth/h${index+1}.txt');
    List<String> lines = hadeth.split('\n');
    lines.removeAt(0);
    verses = lines;
    print(hadeth);
    setState(() {
    });
  }
}

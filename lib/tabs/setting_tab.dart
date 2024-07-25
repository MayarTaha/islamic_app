import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../sheet/language_sheet.dart';
import '../sheet/theme_sheet.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('Language', style: GoogleFonts.elMessiri(
            color: Color(0xff242424),
          fontSize: 30,
          fontWeight: FontWeight.w700),),
           SizedBox(height: 12,),
           InkWell(
             onTap: () {
               showModalBottomSheet(context: context, builder:
               (context) {
                 return Container(
                   child: LanguageSheet(),
                 );
               },
               );
             },
             child: Container(
               width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
                 border: Border.all(color: Color(0xffB7935F))
               ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Text('Arabic', style: GoogleFonts.elMessiri(
                       color: Color(0xff242424),
                       fontSize: 30,
                       fontWeight: FontWeight.w700),),
                 )),
           ),
           SizedBox(height: 30,),
           Text('Theme', style: GoogleFonts.elMessiri(
               color: Color(0xff242424),
               fontSize: 30,
               fontWeight: FontWeight.w700),),
           SizedBox(height: 12,),
           InkWell(
             onTap: () {
               showModalBottomSheet(context: context, builder:
                   (context) {
                 return Container(
                   child: ThemeSheet(),
                 );
               },
               );
             },
             child: Container(
                 width: double.infinity,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     border: Border.all(color: Color(0xffB7935F))
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Text('Light', style: GoogleFonts.elMessiri(
                       color: Color(0xff242424),
                       fontSize: 30,
                       fontWeight: FontWeight.w700),),
                 )),
           ),

         ],
            ),
      );
  }
}

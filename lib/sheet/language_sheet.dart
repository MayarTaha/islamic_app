import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
class LanguageSheet extends StatelessWidget {
  const LanguageSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(AppLocalizations.of(context)!.english,
                style: GoogleFonts.elMessiri(
                    color: Color(0xff242424),
                    fontSize: 30,
                    fontWeight: FontWeight.w300),
              ),
              Spacer(),
              Icon(Icons.done_outlined)
            ],
          ),
          Divider(color: Color(0xffB7935F),
          thickness: 3,),
          Row(
            children: [
              Text(AppLocalizations.of(context)!.arabic,
                style: GoogleFonts.elMessiri(
                    color: Color(0xff242424),
                    fontSize: 30,
                    fontWeight: FontWeight.w300),
              ),
              Spacer(),
              Icon(Icons.done_outlined)
            ],
          ),
        ],
      ),
    );
  }
}

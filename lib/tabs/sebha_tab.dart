import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
int index=0;
int counter=0;
List<String>azkar=['سبحان الله','الحمد لله','الله اكبر'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
           onclick();
          },
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(child: Image(image: AssetImage('assets/images/body_sebha.png'))),
              ),
              Center(child: Image(image: AssetImage('assets/images/head_sebha.png'))),
            ],
          ),
        ),
        Text('عدد التسبيحات',style: GoogleFonts.elMessiri(
            color: Color(0xff242424),
            fontSize: 25,
            fontWeight: FontWeight.w600),
        ),
        ElevatedButton(
          onPressed: (){}, child:
        Text('$counter',style: TextStyle(fontSize: 25,color: Colors.white),
        textAlign: TextAlign.center,),
        style:ElevatedButton.styleFrom(backgroundColor: Color(0xffB7935F),
       fixedSize:Size(80, 90)
        ),
        ),
        ElevatedButton(
          onPressed: (){}, child:
        Text(azkar[index],style: TextStyle(fontSize: 25,color: Colors.white),
          textAlign: TextAlign.center,),
          style:ElevatedButton.styleFrom(backgroundColor: Color(0xffB7935F)
          ),
        ),
      ],
    );
  }
  onclick(){
    if(counter==30){
      counter=0;
     if(index<azkar.length-1){
       index++;
     }
     else{
       index=0;
     }
    }
    else{
    counter++;
    }
    setState(() {});
  }
}

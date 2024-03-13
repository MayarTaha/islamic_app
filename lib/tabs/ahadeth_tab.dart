import 'package:flutter/material.dart';

import '../hadeth_details.dart';

class AhadethTab extends StatelessWidget {
   AhadethTab({Key? key}) : super(key: key);
int idex=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth_logo.png'),
          Divider(
            thickness: 3,
            color: Color(0xffB7935F),
          ),
          Text(
            'الأحاديث',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
          ),
          Divider(
            thickness: 3,
            color: Color(0xffB7935F),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                 return InkWell(
                   onTap: () {
                     Navigator.pushNamed(context, HadethDetails.routeName,
                     arguments: index);
                   },
                   child: Text('الحديث رقم ${index+1}',style: TextStyle(fontSize: 25),
                   textAlign: TextAlign.center,),
                 );
                },
                separatorBuilder: (context, index) =>  Divider(
                  thickness:2,
                  color: Color(0xffB7935F),
                  indent: 40,
                  endIndent: 40,
                ), itemCount: 50,
               ),
          )
        ],
      ),
    );
  }
}

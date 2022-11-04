import 'package:flutter/material.dart';

class Header extends StatelessWidget {
 String ? text , subText;
 bool haslabel = false;
 bool screens=false;

 Header({required this.screens,required this.text,this.subText,required this.haslabel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: screens ==false ?AlignmentDirectional.center : AlignmentDirectional.topStart,
      children: [
        Image.asset('assets/images/Vector.png'),

        Padding(
          padding:screens==false? const EdgeInsets.all(0):const EdgeInsets.only(top: 40,right: 20,left: 20,),
          child: Text(
            '$text',
            style: TextStyle(
                color: Color(0xff0b3fa8),
                fontSize: 35,
                fontWeight: FontWeight.w600,
                fontFamily: 'Arabic'),
          ),
        ),
        Positioned(
          top: 140,
          child: haslabel==false?Container() :Text(
            '$subText',
            style: TextStyle(
                color: Color(0xff0b3fa8),
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'Arabic'),
          ),
        ),
      ],
    );
  }
}

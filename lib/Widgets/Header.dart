import 'package:flutter/material.dart';

class Header extends StatelessWidget {
 String ? text , subText;
 bool haslabel = false;

 Header({required this.text,this.subText,required this.haslabel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset('assets/images/Vector.png'),
        Text(
          '$text',
          style: TextStyle(
              color: Color(0xff0b3fa8),
              fontSize: 35,
              fontWeight: FontWeight.w600,
              fontFamily: 'Arabic'),
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

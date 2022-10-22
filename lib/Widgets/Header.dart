import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset('assets/images/Vector.png'),
        Text(
          'تسجيل الدخول',
          style: TextStyle(
              color: Color(0xff0b3fa8),
              fontSize: 35,
              fontWeight: FontWeight.w600,
              fontFamily: 'Arabic'),
        ),
        Positioned(
          top: 140,
          child: Text(
            'مرحبا بك مجددا !',
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

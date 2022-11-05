import 'package:flutter/material.dart';
import 'package:lam3a/Widgets/Header.dart';

class Walet extends StatelessWidget {
  int money = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Header(
            icon: true,
              screens: true, text: "محفظتي", haslabel: false),
        ),
        Positioned(
            top: 140,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/wallet.png",
                  height: 150,
                  width: 150,
                ),
                Text(
                  "الرصيد المتاح",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.grey,
                      fontFamily: "Arabic",
                      fontWeight: FontWeight.bold),
                ),
                Text("$money  " + "ر س ",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.blue,
                        fontFamily: "Arabic",
                        fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl)
              ],
            ))
      ]),
    );
  }
}

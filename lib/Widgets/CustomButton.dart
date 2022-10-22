import 'package:flutter/material.dart';

import '../Const.dart';

class CustomButton extends StatelessWidget {

    double width , heigt;
    String text;
    Function function;

  CustomButton({required this.function,required this.width, required this.heigt, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        function();
      },
      style: ElevatedButton.styleFrom(
        primary: ButtonColor,
        fixedSize: Size(width, heigt),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        ),

      ),
      child: Text('$text',style: TextStyle(fontSize: 25,fontFamily: 'Cairo'),),
    );
  }
}

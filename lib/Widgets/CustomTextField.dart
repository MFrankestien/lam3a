import 'package:flutter/material.dart';
import 'package:lam3a/Constant/Const.dart';

class CustomTextField extends StatelessWidget {
  String? lable;
  double cwidth;
  bool ? isobsecure =false;
  bool? haslabel =false;

  TextInputType keyboardType;
  TextEditingController tcontroller;

  Function validator;
  Function  onSubbmit;


  CustomTextField({
    this.haslabel,
    required this.keyboardType,
    required this.tcontroller,
    required this.validator,
    this.lable,
    this.isobsecure,
     required this.onSubbmit,
    required this.cwidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
       haslabel ==null? Container():Text('$lable ',
            style: TextStyle(
                color: ButtonColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo')),
        Container(
          width: cwidth,
          child: TextFormField(
              controller: tcontroller,
              keyboardType: keyboardType,
              obscureText: isobsecure!,
              decoration: InputDecoration(
                filled: true,
                fillColor: fillColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: borderColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: borderColor),
                ),
              ),

            validator: (value) {

              return validator(value);
            }, ),
        ),
      ],
    );
  }
}

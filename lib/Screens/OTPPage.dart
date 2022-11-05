import 'package:flutter/material.dart';

import '../Constant/Const.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';
import '../Widgets/Header.dart';

class OTPPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  TextEditingController num1= TextEditingController();

  TextEditingController num2= TextEditingController();

  TextEditingController num3= TextEditingController();

  TextEditingController num4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 650,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Header(
                icon: false,
                screens: false,
                text: 'رمز التأكيد',haslabel: false,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: formKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        CustomTextField(

                          isobsecure: false,
                          onSubbmit: (value){
                            num1.text =value;
                          },
                          keyboardType: TextInputType.phone,
                          tcontroller: num1,
                          validator: (value) {
                            if(value ==null || value.isEmpty){
                              return ;}
                          },
                          cwidth: 70,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        CustomTextField(

                          isobsecure: false,
                          onSubbmit: (value){
                            num2.text =value;
                          },
                          keyboardType: TextInputType.phone,
                          tcontroller: num2,
                          validator: (value) {
                            if(value ==null || value.isEmpty){
                              return ;}
                          },
                          cwidth: 70,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        CustomTextField(

                          isobsecure: false,
                          onSubbmit: (value){
                            num3.text =value;
                          },
                          keyboardType: TextInputType.phone,
                          tcontroller: num3,
                          validator: (value) {
                            if(value ==null || value.isEmpty){
                              return ;}
                          },
                          cwidth: 70,
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        CustomTextField(

                          isobsecure: false,
                          onSubbmit: (value){
                            num4.text =value;
                          },
                          keyboardType: TextInputType.phone,
                          tcontroller: num4,
                          validator: (value) {
                            if(value ==null || value.isEmpty){
                              return '';}
                          },
                          cwidth: 70,
                        ),


                      ]),
                ),
              ),
              CustomButton(
                width: 350,
                heigt: 50,
                text: 'تأكيد',
                function: () {
                  if(formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Done'),)
                    );
                  }
                },
              ),
              InkWell(
                onTap: (){

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                      'ارسال جديد',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Cairo',
                          color: ButtonColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'لم يتم ارسال الرمز؟',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Cairo',
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

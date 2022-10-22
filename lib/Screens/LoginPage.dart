import 'package:flutter/material.dart';
import 'package:lam3a/Const.dart';
import 'package:lam3a/Widgets/CustomButton.dart';
import 'package:lam3a/Widgets/CustomTextField.dart';
import 'package:lam3a/Widgets/Header.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   final formKey = GlobalKey<FormState>();

   TextEditingController emailcontroller= TextEditingController();

   TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextField(
                        isobsecure: false,
                        onSubbmit: (value){
                          emailcontroller.text =value;
                        },
                        keyboardType: TextInputType.emailAddress,
                        tcontroller: emailcontroller,
                        validator: (value) {
                          if(value ==null || value.isEmpty){
                            return 'الرجاء ادخال البريد الالكتروني';}
                        },
                          cwidth: double.infinity,
                          lable: 'البريد الالكتروني',
                          ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomTextField(
                        onSubbmit: (value){
                          passcontroller.text=value;
                        },
                        isobsecure: true,
                        validator:(value){
                          if(value ==null || value.isEmpty){
                            return 'الرجاء ادخال كلمه المرور';}
                        } ,
                        keyboardType: TextInputType.visiblePassword,
                        cwidth: double.infinity,
                        lable: 'كلمة المرور',
                        tcontroller: passcontroller,

                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomButton(
                        width: 350,
                        heigt: 50,
                        text: 'تسجيل الدخول',
                        function: () {
                          if(formKey.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Done'),)
                            );
                          }
                        },
                      )
                    ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'حساب جديد',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Cairo',
                      color: ButtonColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'ليس لديك حساب؟',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Cairo',
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

   String checkFieldEmpty({required String v,required x}) {
     if(v ==null || v.isEmpty){
       return 'Please Enter $x';}
     return'';

   }
}

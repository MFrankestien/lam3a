import 'package:flutter/material.dart';
import 'package:lam3a/Constant/Const.dart';
import 'package:lam3a/Screens/RegisterPage.dart';
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
        child: Container(
          height: 650,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Header(text: 'تسجيل الدخول',subText: 'مرحبا بك مجددا !',haslabel: true,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: formKey,
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> RegisterPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}

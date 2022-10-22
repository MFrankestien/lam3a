import 'package:flutter/material.dart';
import 'package:lam3a/Screens/LoginPage.dart';

import '../Constant/Const.dart';
import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';
import '../Widgets/Header.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  TextEditingController emailcontroller= TextEditingController();

  TextEditingController namecontroller= TextEditingController();

  TextEditingController phonecontroller= TextEditingController();

  TextEditingController passcontroller = TextEditingController();
  TextEditingController repasscontroller = TextEditingController();

  int _groupValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Header(text: "تسجيل جديد",haslabel: false,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: formKey,
                child: Column(

                    children: [
                      CustomTextField(
                        haslabel: true,
                        isobsecure: false,
                        onSubbmit: (value){
                          namecontroller.text =value;
                        },
                        keyboardType: TextInputType.emailAddress,
                        tcontroller: namecontroller,
                        validator: (value) {
                          if(value ==null || value.isEmpty){
                            return 'الرجاء ادخال الاسم';}
                        },
                        cwidth: double.infinity,
                        lable: 'الاسم',
                      ), //name
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        haslabel: true,
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
                      ), // email
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        haslabel: true,
                        isobsecure: false,
                        onSubbmit: (value){
                          phonecontroller.text =value;
                        },
                        keyboardType: TextInputType.phone,
                        tcontroller: phonecontroller,
                        validator: (value) {
                          if(value ==null || value.isEmpty){
                            return 'الرجاء ادخال رقم الهاتف';}
                        },
                        cwidth: double.infinity,
                        lable: 'رقم الهاتف',
                      ), // phone
                      SizedBox(
                        height: 10,
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(start: 15,end: 15),child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: _myRadioButton(
                              title: "ذكر",
                              value: 0,
                              onChangedd: (newValue) {

                                setState(() => _groupValue = newValue);
                                print(_groupValue);
                              },
                            ),
                          ),
                          Expanded(child: _myRadioButton(
                            title: "أنثى",
                            value: 1,
                            onChangedd: (newValue) {

                            setState(() => _groupValue = newValue);
                              print(_groupValue);
                              },
                          ),)
                        ],),),
                      CustomTextField(
                        haslabel: true,
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
                        height: 10,
                      ),
                      CustomTextField(
                        haslabel: true,
                        onSubbmit: (value){
                          repasscontroller.text=value;
                        },
                        isobsecure: true,
                        validator:(value){
                          if(value ==null || value.isEmpty || value!=passcontroller.text){
                            return 'الرجاء التأكد من كلمه المرور';}
                        } ,
                        keyboardType: TextInputType.visiblePassword,
                        cwidth: double.infinity,
                        lable: 'إعادة كلمة المرور',
                        tcontroller: repasscontroller,

                      ),//repass
                      SizedBox(
                        height: 35,
                      ),
                      CustomButton(
                        width: 350,
                        heigt: 50,
                        text: 'تسجيل',
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
              onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> LoginPage()));},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Cairo',
                        color: ButtonColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'لديك حساب؟',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Cairo',
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }

  Widget _myRadioButton({String? title, int? value, required Function onChangedd}) {
    return RadioListTile<int>(
      value: value!,
      activeColor: ButtonColor,
      groupValue: _groupValue,
      onChanged:(value){ return onChangedd(value);},
      title: Text('$title ',
          style: TextStyle(
              color: ButtonColor,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo')),
    );
  }
}

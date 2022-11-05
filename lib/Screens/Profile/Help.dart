import 'package:flutter/material.dart';
import 'package:lam3a/Widgets/Header.dart';

import '../../Constant/Const.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,

            child: Header(screens: true, text: "المساعده",
          icon: true, haslabel: false),),
      Positioned.fill(
      top: 120,
      left: 0,
      right: 0,
      bottom: 0,
      child: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Column(

      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children:[
        Text(
          "عن لمعتي",

          style: TextStyle(
            fontFamily: "Cairo",
              fontSize: 25,
              height: 1,
              color: ButtonColor,
              fontWeight: FontWeight.bold),
        ),
      SizedBox(height: 5,),
      Text(

        "وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي"
          ,
      style: TextStyle(
      fontSize: 20,
      height: 1.5,
      color: Colors.grey,
      fontWeight: FontWeight.w600),
      ),
        SizedBox(height: 15,),
        Text(
          "كيف تستخدم لمعتي ؟",

          style: TextStyle(

              fontFamily: "Cairo",
              fontSize: 25,
              height: 1,
              color: ButtonColor,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5,),
        Text(

              "وخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب حول أقاصي الخير والشر",

          style: TextStyle(
              fontSize: 20,
              height: 1.5,
              color: Colors.grey,
              fontWeight: FontWeight.w600),
        ),

        ])))]),
    );}
}

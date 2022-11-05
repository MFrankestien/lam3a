import 'package:flutter/material.dart';
import 'package:lam3a/Screens/Profile/Walet.dart';
import 'package:lam3a/Widgets/Header.dart';
import 'package:lam3a/data.dart';

import '../../../Widgets/CustomlistviewOption.dart';

class Settings extends StatelessWidget {


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
              screens: true, text: "الاعدادات", haslabel: false),
        ),
        Positioned.fill(
            top: 140,
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (contxt, index) {
                  return CustomListviewOption(
                    icon: settingIcons[index],
                    lable: settingList[index],
                    lenth: settingList.length,
                    ontap:(){
                      if(index==0){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>Walet()));
                      }else if(index==1){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>Walet()));
                      }else if(index==2){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>Walet()));
                      }

                    },
                  );
                },
                separatorBuilder: (index, con) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 1.5,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                  );
                },
                itemCount: settingList.length))
      ]),
    );
  }
}

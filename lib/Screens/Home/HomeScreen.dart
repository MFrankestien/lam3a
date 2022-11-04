import 'package:flutter/material.dart';
import 'package:lam3a/Constant/Const.dart';
import 'package:lam3a/Widgets/Header.dart';
import 'package:lam3a/data.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentindex =3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
        Positioned(
          top: 0,
          bottom: 0,

          child: Header(
            screens: true,
            text: "${headers[currentindex]}", haslabel: false,),),
          Positioned.fill(
            top: 110,

              child: pages[currentindex]),



      ],),
      bottomNavigationBar:  BottomNavigationBar(
          elevation: 3,
          currentIndex: currentindex,
            items: [
              BottomNavigationBarItem(

                  icon: Image.asset('assets/images/person.png',
                  height: 25,
                    color:currentindex==0?ButtonColor:Colors.grey,
                  ),
                  label: "الحساب" ,

              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/calender.png',
                  height: 25,
                  color:currentindex==1?ButtonColor:Colors.grey,
                ),
                label: "الحجز" ,

              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/cars.png',
                  color:currentindex==2?ButtonColor:Colors.grey,
                  height: 25,),
                label: "المركبات" ,


              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/home.png',
                  color:currentindex==3?ButtonColor:Colors.grey,
                  height: 25,),
                label: "الرئيسيه" ,

              ),
            ],
          selectedItemColor: ButtonColor,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (index){
            setState((){
              currentindex=index;

              print(currentindex);
            });
          },

        ),

    );
  }


}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lam3a/Widgets/CustomlistviewOption.dart';
import 'package:lam3a/data.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    List profilenav=[
      Navigator.push(context,MaterialPageRoute(builder:(context)=>)),
      Reservation(),
      Cars(),
      Home(),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  Text("محمد خالد",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'HacenTunisia',
                          fontWeight: FontWeight.bold)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("0.0",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'HacenTunisia',
                              fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 35,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: SvgPicture.asset(
                  "assets/images/avatar.svg",
                  fit: BoxFit.contain,
                ),
              ),
            ]),
          ),
          ListView.separated(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (contxt, index) {
                return CustomListviewOption(
                  icon: picon[index],
                  lable: profile[index],
                  lenth: picon.length,
                  ontap: () {},
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
              itemCount: picon.length)
        ],
      ),
    );
  }
}

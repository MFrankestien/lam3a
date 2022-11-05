import 'package:flutter/material.dart';

class CustomListviewOption extends StatelessWidget {
 Function ontap;
 String lable;
 IconData icon;
 int lenth;


 CustomListviewOption({required this.ontap, required this.lable, required this.icon, required this.lenth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: (){
          ontap();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Text("$lable",style: TextStyle(fontFamily: 'Cairo',color: Colors.grey,fontSize: 25),),
            Icon(icon,color: Colors.grey,size: 40,),

          ],),
      ),
    );
  }
}

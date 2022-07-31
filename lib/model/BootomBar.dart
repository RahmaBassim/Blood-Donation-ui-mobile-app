import 'package:flutter/material.dart';

import '../view/GridHome.dart';
import '../view/Home.dart';
import '../view/OrderDetails.dart';
import '../view/Patient Details.dart';
import 'Color.dart';
import 'InputText.dart';



class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: size.width,
        height: 70,
        decoration: BoxDecoration(
          color: Blue,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          boxShadow: [BoxShadow(
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(2, 0),
            color: Blue.withOpacity(0.3),
          )],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GridHome()));
                  },
                  icon: Icon(Icons.menu, color: White,),
                ),
                InputText(Input: "Menu", TextColor: White, FontSize: 15)
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  },
                  icon: Icon(Icons.home, color: White,),
                ),
                InputText(Input: "Home", TextColor: White, FontSize: 15)
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientDetails()));
                  },
                  icon: Icon(Icons.add_chart_outlined, color: White,),
                ),
                InputText(Input: "Patient", TextColor: White, FontSize: 15)
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderDetails()));
                  },
                  icon: Icon(Icons.details, color: White,),
                ),
                InputText(Input: "Details", TextColor: White, FontSize: 15)
              ],
            ),
          ],
        ) ,
      ),
    );
  }
}

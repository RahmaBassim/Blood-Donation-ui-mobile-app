import 'package:flutter/material.dart';

import 'Color.dart';
import 'InputText.dart';


class ListTypes extends StatelessWidget {
  const ListTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              color: Blue,
              borderRadius: BorderRadius.only(
                topRight: Radius.elliptical(20,20),
                bottomRight: Radius.elliptical(35,35),
                topLeft: Radius.elliptical(20,20),
                bottomLeft: Radius.elliptical(35,35),
              ),
              boxShadow: [BoxShadow(
                offset: Offset(0,4),
                blurRadius: 6,
                spreadRadius: 5,
                color: Blue.withOpacity(0.3),
              )]
            ),
            child: Center(
              child: InputText(
                Input: "Blood",
                TextColor: White,
                FontSize: 20,
              ),
            ),
          ),
          SizedBox(width: 15,),
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              color: White,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Gray)
            ),
            child:Center(
              child: InputText(
                Input: "Urine",
                TextColor: Gray,
                FontSize: 20,
              ),
            ),
          ),
          SizedBox(width: 15,),
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Gray)
            ),
            child:Center(
              child: InputText(
                Input: "Stool",
                TextColor: Gray,
                FontSize: 20,
              ),
            ),
          )
        ] 
      ),
    );
  }
}

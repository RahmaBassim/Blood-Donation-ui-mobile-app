import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Color.dart';
import 'InputText.dart';
import 'StarIcon.dart';



class Grid extends StatelessWidget {
  final String PruductName;

  const Grid({Key? key, required this.PruductName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      width: size.width/2.15,
      decoration: BoxDecoration(
        color: SoftGray,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
          offset: Offset(0,4),
          blurRadius: 4,
          spreadRadius: 2,
          color: Gray.withOpacity(0.5),
        )]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20,),
          Container(
            width: 130,
            height: 80,
            decoration: BoxDecoration(
              color: White,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset("Images/1.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: InputText(
                  Input: PruductName,
                  TextColor: Black,
                FontSize: 15,
                FontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              StarIcon(),
              StarIcon(),
              StarIcon(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InputText(
                  Input: "150EGP",
                  TextColor: Blue,
                  FontSize: 10),
              Container(
                width: 70,
                height: 25,
                decoration: BoxDecoration(
                  color: Blue,
                  borderRadius: BorderRadius.circular(15),
                    boxShadow:[BoxShadow(
                      offset: Offset(0,2),
                      blurRadius: 3,
                      spreadRadius: 3,
                      color: Blue.withOpacity(0.5),
                    )]
                ),
                child: Center(
                  child: InputText(
                      Input: "details",
                      TextColor: White,
                      FontSize: 10),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}


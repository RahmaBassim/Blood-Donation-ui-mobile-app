import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Color.dart';
import 'InputText.dart';

class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Gray,
              shape: BoxShape.circle
          ),
          child:Icon(Icons.favorite_outline_sharp,size: 35),
        ),
        Container(
          width: 270,
          height: 50,
          decoration: BoxDecoration(
            color: White,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(
              offset: Offset(0,4),
              blurRadius: 6,
              spreadRadius: 5,
              color: Gray.withOpacity(0.5),
            )]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InputText(
                  Input: "search",
                  TextColor: Gray,
                  FontSize: 15,
                ),
              ),
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  color: Blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.search,color: White,size: 35,),
              )
            ],
          ),
        )
      ],
    );
  }
}

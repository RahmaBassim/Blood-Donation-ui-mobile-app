import 'package:flutter/material.dart';

import 'Color.dart';
import 'InputText.dart';


class Botton extends StatelessWidget {
  const Botton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(30, 30),
          topRight: Radius.elliptical(30, 30),
          bottomLeft: Radius.elliptical(50, 50),
          bottomRight: Radius.elliptical(50, 50),
        ),
      ),
      child: Center(
        child: InputText(
            Input: "Add To Cart", TextColor: White, FontSize: 15, FontWeight: FontWeight.bold,),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../view/GridHome.dart';
import '../view/OrderDetails.dart';
import 'BackIcon.dart';
import 'Color.dart';
import 'InputText.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BackIcon(
          Return: GridHome(),
        ),
        SizedBox(width: 50,),
        InputText(
          Input: "Track Your Orders",
          TextColor: Black,
          FontSize: 20,
          FontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}

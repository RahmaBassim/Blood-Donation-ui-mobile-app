import 'package:flutter/material.dart';

import 'Color.dart';


class StarIcon extends StatefulWidget {
  @override
  State<StarIcon> createState() => _StarIconState();
}

class _StarIconState extends State<StarIcon> {
  bool x= true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (){
          x=!x;
          setState(() {});
        },
        icon:Icon(Icons.star_rate_rounded,color: x?Gray:Yellow,)
    );
  }
}

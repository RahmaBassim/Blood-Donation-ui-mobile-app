import 'package:flutter/material.dart';

import 'Color.dart';

class BackIcon extends StatelessWidget {
  final Return;

  const BackIcon({Key? key,required this.Return}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: DarkGray,width: 2),
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Return));
          },
          icon: Icon(Icons.arrow_back_ios, color: DarkGray,size: 20,)),
    );
  }
}

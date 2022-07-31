import 'package:flutter/material.dart';

import 'Color.dart';
import 'InputText.dart';

class Quantity extends StatefulWidget {
  const Quantity({Key? key}) : super(key: key);

  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
            color: White,
            border: Border.all(
              color: Gray,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: DarkGray,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.add,size: 20,),
                    onPressed: () {
                      _counter++;
                      setState(() {
                      });
                    },),
                )
            ),
            InputText(Input: '$_counter', TextColor: Yellow, FontSize: 20, FontWeight: FontWeight.bold,),
            Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: DarkGray,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      if(_counter>0){
                        _counter--;
                      }
                      else{
                        _counter=0;
                      }
                      setState(() {
                      });
                    },)
                )
            ),
          ],
        )
    );
  }
}

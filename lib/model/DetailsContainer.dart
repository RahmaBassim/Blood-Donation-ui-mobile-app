import 'package:flutter/material.dart';

import 'Color.dart';
import 'InputText.dart';


class DetailsContainer extends StatelessWidget {
  TextEditingController Name= TextEditingController();
  TextEditingController Age= TextEditingController();
  TextEditingController Note= TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      width: size.width/1.15,
      height: 350,
      decoration: BoxDecoration(
        color: SoftBlue,
        borderRadius: BorderRadius.circular(6)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 280,
            height: 50,
            child: TextField(
              keyboardType: TextInputType.name,
              controller: Name,
              decoration: InputDecoration(
                fillColor: White,
                filled: true,
                hintText: "Full Name",
                hintStyle: TextStyle(color: Gray.withOpacity(0.6)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Container(
            width: 280,
            height: 50,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: Age,
              decoration: InputDecoration(
                fillColor: White,
                filled: true,
                hintText: "Patient age",
                hintStyle: TextStyle(color: Gray.withOpacity(0.6)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Container(
            width: 280,
            height: 200,
            decoration: BoxDecoration(
              color: White,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: InputText(
                  Input: "Note",
                  TextColor: Gray.withOpacity(0.6),
                  FontSize: 15),
            )
          ),
        ],
      ),
    );
  }
}

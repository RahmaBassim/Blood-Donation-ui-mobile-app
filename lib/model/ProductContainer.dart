import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order/model/stepper.dart';

import 'Color.dart';
import 'InputText.dart';


class ProductContainer extends StatelessWidget {
  final Phote;
  final String ProuductName;
  final String ProuductDetails;
  final String ProuductDetails2;

  const ProductContainer({Key? key,
    required this.Phote,
    required this.ProuductName,
    required this.ProuductDetails,
    required this.ProuductDetails2,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      width: size.width/1.1,
      height: 320,
      decoration: BoxDecoration(
        color: White,
        border: Border.all(color: SoftGray,width: 2),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
          offset: Offset(0,3),
          spreadRadius: 2,
          blurRadius: 4,
          color: Colors.grey.withOpacity(0.3),
        )],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Phote),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 200,
                    height: 70,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: InputText(
                              Input: ProuductName,
                              TextColor: Black,
                              FontSize: 15,
                            FontWeight: FontWeight.bold,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: InputText(
                              Input: ProuductDetails,
                              TextColor: Black,
                              FontSize: 10,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: InputText(
                              Input: ProuductDetails2,
                              TextColor: Black,
                              FontSize: 10,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InputText(
                                Input: "Delevered by",
                                TextColor: Blue,
                              FontSize: 10,
                              FontWeight: FontWeight.bold,
                            ),
                            InputText(
                                Input: "22/2/2022",
                                TextColor: Yellow,
                              FontSize: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          stepper(),
        ],
      ),
    );
  }
}

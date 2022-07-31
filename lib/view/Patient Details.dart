import 'package:flutter/material.dart';
import '../model/Botton.dart';
import '../model/Color.dart';
import '../model/DetailsContainer.dart';
import '../model/Header.dart';
import '../model/InputText.dart';

class PatientDetails extends StatelessWidget {
  const PatientDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/2.png"),
              fit: BoxFit.fill
            )
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Header(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: InputText(
                          Input: "First Patient",
                          TextColor: Yellow,
                        FontSize: 15,
                        FontWeight: FontWeight.bold,
                      )),
                ),
                DetailsContainer(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: InputText(
                        Input: "Second Patient",
                        TextColor: Yellow,
                        FontSize: 15,
                        FontWeight: FontWeight.bold,
                      )),
                ),
                DetailsContainer(),
                SizedBox(height: 20,),
                Botton(),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

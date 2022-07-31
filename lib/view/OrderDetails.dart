import 'package:flutter/material.dart';
import '../model/BackIcon.dart';
import '../model/BootomBar.dart';
import '../model/OrderContainer.dart';
import '../model/ProductImage.dart';
import 'Home.dart';


class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(image: AssetImage("Image/2.png"),fit: BoxFit.fill,),
            Container(
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: BackIcon(Return: Home(),),
                      ),
                    ),
                    ProductImage(Photo: "Image/1.jpg",),
                    SizedBox(height: 20,),
                    OrderContainer(),
                    SizedBox(height: 100,)
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}

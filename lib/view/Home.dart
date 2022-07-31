import 'package:flutter/material.dart';
import '../model/BootomBar.dart';
import '../model/Header.dart';
import '../model/ProductContainer.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Header(),
                  ),
                  ProductContainer(
                    Phote: "Image/1.jpg",
                    ProuductName: "TSH",
                    ProuductDetails: "Lorem Ipsum is simply dummy text ",
                    ProuductDetails2: "of the printing and typesetting industry.",
                  ),
                  SizedBox(height: 50,),
                  ProductContainer(
                    Phote: "Image/1.jpg",
                    ProuductName: "TSH",
                    ProuductDetails: "Lorem Ipsum is simply dummy text ",
                    ProuductDetails2: "of the printing and typesetting industry.",
                  ),
                  SizedBox(height: 50,),
                  ProductContainer(
                    Phote: "Image/1.jpg",
                    ProuductName: "TSH",
                    ProuductDetails: "Lorem Ipsum is simply dummy text ",
                    ProuductDetails2: "of the printing and typesetting industry.",
                  ),
                  SizedBox(height: 50,),
                  ProductContainer(
                    Phote: "Image/1.jpg",
                    ProuductName: "TSH",
                    ProuductDetails: "Lorem Ipsum is simply dummy text ",
                    ProuductDetails2: "of the printing and typesetting industry.",
                  ),
                  SizedBox(height: 50,),
                ],
              ),
            ),
            BottomBar(),
          ],
        )
      ),
    );
  }
}

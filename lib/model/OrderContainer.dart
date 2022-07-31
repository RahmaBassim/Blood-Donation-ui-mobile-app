import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'Botton.dart';
import 'Color.dart';
import 'InputText.dart';
import 'Quantity.dart';


class OrderContainer extends StatelessWidget {
  const OrderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width/1.2,
      decoration: BoxDecoration(
        color: White,
        border: Border.all(color: SoftGray),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(
          offset: Offset(0,3),
          spreadRadius: 2,
          blurRadius: 4,
          color: Colors.grey.withOpacity(0.3),
        )],
    ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InputText(Input: "TSH", TextColor: Black, FontSize: 20, FontWeight: FontWeight.bold,),
                FavoriteButton(
                  isFavorite: true,
                  // iconDisabledColor: Colors.white,
                  valueChanged: (_isFavorite) {
                    print('Is Favorite : $_isFavorite');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                StarButton(
                  isStarred: false,
                  // iconDisabledColor: Colors.white,
                  valueChanged: (_isStarred) {
                    print('Is Starred : $_isStarred');
                  },
                ),
                StarButton(
                  isStarred: false,
                  // iconDisabledColor: Colors.white,
                  valueChanged: (_isStarred) {
                    print('Is Starred : $_isStarred');
                  },
                ),
                StarButton(
                  isStarred: false,
                  // iconDisabledColor: Colors.white,
                  valueChanged: (_isStarred) {
                    print('Is Starred : $_isStarred');
                  },
                ),
                StarButton(
                  isStarred: false,
                  // iconDisabledColor: Colors.white,
                  valueChanged: (_isStarred) {
                    print('Is Starred : $_isStarred');
                  },
                ),
                StarButton(
                  isStarred: false,
                  // iconDisabledColor: Colors.white,
                  valueChanged: (_isStarred) {
                    print('Is Starred : $_isStarred');
                  },
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
                child: InputText(Input: "150 EGP", TextColor: Blue, FontSize: 20, FontWeight: FontWeight.bold,)),
            Align(
              alignment: Alignment.centerLeft,
                child: InputText(
                  Input: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's tandard dummy text ever since the 1500s .",
                  TextColor: DarkGray,
                  FontSize: 10,
               )),
            Row(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: InputText(
                      Input: "Fasting : ",
                      TextColor: Blue,
                      FontSize: 15,
                   )),
                InputText(Input: "No", TextColor: DarkGray, FontSize: 15)
              ],
            ),
            SizedBox(height: 10,),
            Align(
                alignment: Alignment.centerLeft,
                child: InputText(Input: "Low Levels Of TSH :", TextColor: Blue, FontSize: 13, FontWeight: FontWeight.bold,)),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: DarkGray,
                  ),
                ),
                SizedBox(width: 5,),
                InputText(Input: "Too Much Iodine In Your Body", TextColor: DarkGray, FontSize: 10)
              ],
            ),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: DarkGray,
                  ),
                ),
                SizedBox(width: 5,),
                InputText(Input: "Too Much Thyroid Hormone Medication", TextColor: DarkGray, FontSize: 10)
              ],
            ),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: DarkGray,
                  ),
                ),
                SizedBox(width: 5,),
                InputText(Input: "Graves’ Disease", TextColor: DarkGray, FontSize: 10)
              ],
            ),
            SizedBox(height: 20,),
            Align(
                alignment: Alignment.centerLeft,
                child: InputText(Input: "Low Levels Of TSH :", TextColor: Blue, FontSize: 13, FontWeight: FontWeight.bold,)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: DarkGray,
                  ),
                ),
                SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputText(Input: "TSH Levels Typically Fall Between 0.4 And 4.0", TextColor: DarkGray, FontSize: 10),
                    InputText(Input: " Milliunits Per Liter", TextColor: DarkGray, FontSize: 10),
                  ],
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: DarkGray,
                  ),
                ),
                SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputText(Input: "T3 And T4 Levels Increase In Pregnancy And TSH", TextColor: DarkGray, FontSize: 10),
                    InputText(Input: "Levels Decrease.", TextColor: DarkGray, FontSize: 10),
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: InputText(Input: "Number Of Samples :", TextColor: Blue, FontSize: 13, FontWeight: FontWeight.bold,)),
                Quantity()
              ],
            ),
            SizedBox(height: 30,),
            Botton()
          ],
        ),
      ),
    );
  }
}

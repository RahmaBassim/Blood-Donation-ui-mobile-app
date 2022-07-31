import 'package:flutter/material.dart';


class ProductImage extends StatelessWidget {
  final Photo;

  const ProductImage({Key? key, required this.Photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Photo)
            )
        ),
      ),
    );
  }
}

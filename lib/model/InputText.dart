import 'package:flutter/material.dart';


class InputText extends StatelessWidget {
  final String Input;
  final Color TextColor;
  final FontWeight;
  final double FontSize;

  const InputText({Key? key,
    required this.Input,
    required this.TextColor,
    this.FontWeight,
    required this.FontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Input,
      softWrap: true,
      style: TextStyle(
        color: TextColor,
        fontWeight: FontWeight,
        fontSize: FontSize,
      ),
    );
  }
}

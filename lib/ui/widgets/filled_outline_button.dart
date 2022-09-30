import 'package:flutter/material.dart';
import 'package:krishi_bazar/constants/constant.dart';

class FilledOutlineButton extends StatelessWidget {
  const FilledOutlineButton(
      {super.key, this.isFilled = false, required this.text});

  final bool isFilled;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 0,
      color: isFilled ? kSecondaryColor : Colors.white,
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
            color: isFilled ? Colors.white : kPrimaryColor, fontSize: 12),
      ),
    );
  }
}

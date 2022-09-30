import 'package:flutter/material.dart';
import 'package:krishi_bazar/constants/constant.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    this.isFilled = false,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final bool isFilled;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isFilled ? kPrimaryColor : kBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: isFilled ? Colors.white : kPrimaryColor,
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: isFilled ? Colors.white : kPrimaryColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}

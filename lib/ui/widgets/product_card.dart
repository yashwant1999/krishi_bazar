import 'package:flutter/material.dart';
import 'package:krishi_bazar/constants/constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                spreadRadius: 5,
                blurStyle: BlurStyle.outer,
                blurRadius: 5.5,
                offset: const Offset(2, 3),
                color: Colors.grey.withOpacity(0.5)),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.network(
                'https://cdn.britannica.com/39/108039-050-3F22EDED/grapes.jpg?w=400&h=400&c=crop',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Flexible(
            child: Text(
              'Vegetables',
              style: TextStyle(fontSize: 8, fontWeight: FontWeight.w600),
            ),
          ),
          const Flexible(
            child: Text(
              'Grapes',
              style: TextStyle(
                  fontSize: 13,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '2km',
                  style: TextStyle(color: kSecondaryColor, fontSize: 10),
                ),
                Icon(
                  Icons.pin_drop,
                  color: kSecondaryColor,
                  size: 12,
                ),
                Spacer(),
                Text(
                  ' 250/Kg',
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

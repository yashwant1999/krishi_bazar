import 'package:flutter/material.dart';
import 'package:krishi_bazar/constants/constant.dart';

class CustomDropDownField extends StatefulWidget {
  const CustomDropDownField(
      {super.key, required this.text, required this.items});
  final String text;
  final List<String> items;
  @override
  State<CustomDropDownField> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<CustomDropDownField> {
  // List<String> items = ['item1', 'item2'];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: kBackgroundColor,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15),
        ),
        child: DropdownButtonFormField<String>(
          iconEnabledColor: kSecondaryColor,
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: widget.text,
          ),
          onChanged: (value) => setState(() => value),
          items: widget.items
              .map(
                (item) => DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: kPrimaryColor),
                  ),
                ),
              )
              .toList(),
        ));
  }
}

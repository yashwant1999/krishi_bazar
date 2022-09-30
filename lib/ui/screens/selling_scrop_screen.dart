import 'package:flutter/material.dart';
import 'package:krishi_bazar/constants/constant.dart';
import 'package:krishi_bazar/ui/widgets/custom_drop_menu.dart';

class SellingCropScreen extends StatefulWidget {
  const SellingCropScreen({super.key});

  @override
  State<SellingCropScreen> createState() => _SellingCropScreenState();
}

class _SellingCropScreenState extends State<SellingCropScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Krsihi Bazar',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomDropDownField(
                items: ['Crops, Pulse, Fruit'],
                text: 'Category',
              ),
              const SizedBox(height: 10),
              const CustomDropDownField(
                text: 'Sub Category',
                items: ['Wheat', 'Rice', 'Cotton'],
              ),
              const SizedBox(height: 10),
              const CustomDropDownField(
                text: 'Variety',
                items: ['Arka Vardhan', 'Arkha Vishal'],
              ),
              const SizedBox(height: 10),
              const CustomDropDownField(
                text: 'Brand',
                items: ['Az', 'eg'],
              ),
              const SizedBox(height: 10),
              const CustomDropDownField(
                text: 'Price',
                items: ['400 Rupy', '500 Rupy'],
              ),
              const SizedBox(height: 10),
              const CustomDropDownField(
                text: '4',
                items: ['5', '6'],
              ),
              const SizedBox(height: 10),
              descriptionField(),
              const SizedBox(height: 10),
              const AddImageButton(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  TextField descriptionField() {
    return TextField(
      maxLines: 5,
      decoration: InputDecoration(
          filled: true,
          fillColor: kBackgroundColor,

          // contentPadding:
          //     EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple.shade600),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          hintText: 'Description'),
      // padding: const EdgeInsets.all(8),
      // height: 150,
      // width: double.infinity,
      // decoration: BoxDecoration(
      //     border: Border.all(color: Colors.grey.shade300),
      //     color: kBackgroundColor,
      //     borderRadius: BorderRadius.circular(12)),
      // child: const Text(
      //   'Description',
      //   style:
      //       TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
      // ),
    );
  }
}

class AddImageButton extends StatelessWidget {
  const AddImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 60,
      decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(
            Icons.add_a_photo,
            color: kSecondaryColor,
          ),
          Text(
            'Add Image',
            style: TextStyle(color: kSecondaryColor),
          )
        ],
      ),
    );
  }
}

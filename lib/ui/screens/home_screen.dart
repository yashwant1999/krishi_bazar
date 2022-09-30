import 'package:flutter/material.dart';
import 'package:krishi_bazar/constants/constant.dart';
import 'package:krishi_bazar/ui/screens/selling_scrop_screen.dart';
import 'package:krishi_bazar/ui/widgets/category_card.dart';
import 'package:krishi_bazar/ui/widgets/filled_outline_button.dart';
import 'package:krishi_bazar/ui/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  void updatePage(int value) {
    setState(() {
      page = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: kPrimaryColor,
        ),
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
            CustomTabBar(),
            SizedBox(height: 10),
            SearchBar(),
            SizedBox(height: 10),
            Categories(),
            SizedBox(height: 10),
            ProductGridView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kSecondaryColor,
        unselectedItemColor: Colors.grey,
        // backgroundColor: Colors.white,
        iconSize: 28,
        onTap: updatePage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.headphones), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.headphones), label: 'My Station'),
          BottomNavigationBarItem(
              icon: Icon(Icons.headphones), label: 'Krishi Bazar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.headphones), label: 'My Farm'),
          BottomNavigationBarItem(
              icon: Icon(Icons.headphones), label: 'Krishi Gyan'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              backgroundColor: kSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              )),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SellingCropScreen(),
              ),
            );
          },
          icon: const Icon(Icons.add),
          label: const Text('Sell')),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryCard(
            icon: Icons.transform_sharp,
            text: 'some ',
            press: () {},
            isFilled: true,
          ),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(icon: Icons.propane, text: 'some ', press: () {}),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(icon: Icons.science, text: 'some ', press: () {}),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(
              icon: Icons.family_restroom, text: 'some ', press: () {}),
          const SizedBox(
            width: 10,
          ),
          CategoryCard(icon: Icons.propane_tank, text: 'some ', press: () {}),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
          onChanged: (value) => print(value),
          decoration: const InputDecoration(
              // contentPadding:
              //     EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: "Search product name",
              hintStyle: TextStyle(fontSize: 15),
              prefixIcon: Icon(
                Icons.search,
                color: kPrimaryColor,
              ))),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        FilledOutlineButton(text: 'All'),
        FilledOutlineButton(isFilled: true, text: 'Buy'),
        FilledOutlineButton(text: 'Rent')
      ],
    );
  }
}

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 30,
        crossAxisSpacing: 20,
        padding: const EdgeInsets.all(8),
        childAspectRatio: 164 / 222,
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return const ProductCard();
        }),
      ),
    );
  }
}

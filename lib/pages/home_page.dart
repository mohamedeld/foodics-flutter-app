import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';
import 'package:fooddeliveryapp/widgets/food_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/images/classic_burger.jpg",
                height: size.height * 0.23,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 32),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: foods.length,
              itemBuilder: (context, index) => FoodItem(foodIndex: index),
            ),
          ],
        ),
      ),
    );
  }
}

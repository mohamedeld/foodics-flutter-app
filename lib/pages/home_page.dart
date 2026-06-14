import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';
import 'package:fooddeliveryapp/pages/food_details_page.dart';
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
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/images/classic_burger.jpg",
                height: isLandScape ? size.height * 0.7 : size.height * 0.23,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 32),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isLandScape ? 3 : 2,
                mainAxisSpacing: isLandScape
                    ? size.height * 0.08
                    : size.height * 0.012,
                crossAxisSpacing: isLandScape
                    ? size.height * 0.08
                    : size.height * 0.012,
              ),
              itemCount: foods.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(
                        '/food-details',
                        arguments: {
                          'foodIndex': index,
                          'foodItem': foods[index],
                        },
                      )
                      .then(
                        (value) => {
                          debugPrint(value.toString()),
                          setState(() {}),
                        },
                      );
                },
                child: FoodItem(foodIndex: index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

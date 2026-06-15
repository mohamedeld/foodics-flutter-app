import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';
import 'package:fooddeliveryapp/widgets/food_details/food_checkout.dart';
import 'package:fooddeliveryapp/widgets/food_details/food_details_content.dart';
import 'package:fooddeliveryapp/widgets/food_details/top_banner.dart';
import 'package:fooddeliveryapp/widgets/food_item_favorite.dart';

class FoodDetailsPage extends StatelessWidget {
  FoodDetailsPage({super.key});
  static const String routeName = "/food-details";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final int foodIndex = args['foodIndex'];
    final ProductItemModel foodItem = args['foodItem'];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(foodItem.name);
          },
        ),
      ),
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TopBanner(
                      img_url: foodItem.imgUrl,
                      foodIndex: foodIndex ?? 0,
                    ),
                    const SizedBox(height: 16),
                    FoodDetailsContent(foodItem: foodItem),
                  ],
                ),
              ),
            ),
            FoodCheckout(price: foodItem.price),
          ],
        ),
      ),
    );
  }
}

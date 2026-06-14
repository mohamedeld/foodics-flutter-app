import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';
import 'package:fooddeliveryapp/widgets/food_details/food_details_content.dart';
import 'package:fooddeliveryapp/widgets/food_details/top_banner.dart';
import 'package:fooddeliveryapp/widgets/food_item_favorite.dart';

class FoodDetailsPage extends StatelessWidget {
  final ProductItemModel foodItem;
  int? foodIndex;
  FoodDetailsPage({super.key, required this.foodItem, this.foodIndex});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBanner(img_url: foodItem.imgUrl, foodIndex: foodIndex ?? 0),
              const SizedBox(height: 16),
              FoodDetailsContent(foodItem: foodItem),
            ],
          ),
        ),
      ),
    );
  }
}

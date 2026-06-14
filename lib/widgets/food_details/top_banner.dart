import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widgets/food_item_favorite.dart';

class TopBanner extends StatelessWidget {
  final String img_url;
  final int foodIndex;
  const TopBanner({super.key, required this.img_url, required this.foodIndex});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              img_url,
              fit: BoxFit.contain,
              height: size.height * 0.28,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: FoodItemFavorite(
            foodIndex: foodIndex,
            width: 200,
            height: 200,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';
import 'package:fooddeliveryapp/widgets/food_item_favorite.dart';

class FoodItem extends StatelessWidget {
  final int foodIndex;
  FoodItem({super.key, required this.foodIndex});

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.textScalerOf(context);
    final size = MediaQuery.of(context).size;
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Center(
                    child: Image.network(
                      foods[foodIndex].imgUrl,
                      height: constraints.maxHeight * 0.55,
                      errorBuilder: (context, error, stackTrace) => Icon(
                        Icons.broken_image,
                        size: constraints.maxHeight * 0.55,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  FoodItemFavorite(
                    foodIndex: foodIndex,
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                  ),
                ],
              ),
              SizedBox(height: constraints.maxHeight * 0.05),
              SizedBox(
                height: constraints.maxHeight * 0.2,
                child: FittedBox(
                  child: Text(
                    foods[foodIndex].name,
                    style: TextStyle(
                      fontSize: textScale.scale(20),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
              Text(
                '\$${foods[foodIndex].price}',
                style: TextStyle(
                  fontSize: textScale.scale(20),
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';

class FoodItem extends StatelessWidget {
  final ProductItemModel food;
  const FoodItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              food.imgUrl,
              height: 100,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.broken_image, size: 60, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              food.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              '\$${food.price}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';

class FoodItem extends StatefulWidget {
  final int foodIndex;
  const FoodItem({super.key, required this.foodIndex});

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  bool isFavorite = false;
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
            Stack(
              children: [
                Image.network(
                  foods[widget.foodIndex].imgUrl,
                  height: 100,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.broken_image, size: 60, color: Colors.grey),
                ),
                Align(
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          foods[widget.foodIndex] = foods[widget.foodIndex]
                              .copyWith(isFavorite: !isFavorite);
                          isFavorite = !isFavorite;
                        });
                      },
                      child: Icon(
                        foods[widget.foodIndex].isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  alignment: Alignment.topRight,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              foods[widget.foodIndex].name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              '\$${foods[widget.foodIndex].price}',
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

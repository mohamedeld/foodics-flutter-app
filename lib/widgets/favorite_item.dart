import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';

class FavoriteItem extends StatelessWidget {
  // ✅ No longer needs to be Stateful
  final ProductItemModel food; // ✅ Receives the object directly
  final VoidCallback onUnfavorite;

  const FavoriteItem({
    super.key,
    required this.food,
    required this.onUnfavorite,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              food.imgUrl,
              height: isLandScape ? size.height * 0.2 : size.height * 0.1,
              width: size.width * 0.2,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.broken_image, size: 60, color: Colors.grey),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "\$${food.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                final targetedIndex = foods.indexOf(food);
                foods[targetedIndex] = foods[targetedIndex].copyWith(
                  isFavorite: false,
                );
                onUnfavorite(); // ✅ Tells parent to rebuild with updated list
              },
              icon: Icon(Icons.favorite, color: Theme.of(context).primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}

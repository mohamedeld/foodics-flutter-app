import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';

class FoodItemFavorite extends StatefulWidget {
  final int foodIndex;
  final double width;
  final double height;
  FoodItemFavorite({
    super.key,
    required this.foodIndex,
    required this.width,
    required this.height,
  });

  @override
  State<FoodItemFavorite> createState() => _FoodItemFavoriteState();
}

class _FoodItemFavoriteState extends State<FoodItemFavorite> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        child: InkWell(
          onTap: () {
            setState(() {
              foods[widget.foodIndex] = foods[widget.foodIndex].copyWith(
                isFavorite: !isFavorite,
              );
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
        width: widget.width * 0.2,
        height: widget.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      alignment: Alignment.topRight,
    );
  }
}

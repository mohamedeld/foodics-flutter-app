import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';
import 'package:fooddeliveryapp/widgets/food_details/food_counter.dart';
import 'package:fooddeliveryapp/widgets/food_details/property_item.dart';

class FoodDetailsContent extends StatelessWidget {
  final ProductItemModel foodItem;
  const FoodDetailsContent({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodItem.name,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Buffalo Burger",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
              FoodCounter(),
            ],
          ),
          const SizedBox(height: 32),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PropertyItem(propertyName: "Size", propertyValue: "Medium"),
                VerticalDivider(),
                PropertyItem(
                  propertyName: "Cooking",
                  propertyValue: "10-20 minutes",
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Completed responsive enhancements for Heading, Slider, and TopMediaSlider components. Added mobile breakpoint support, improved image optimization",
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

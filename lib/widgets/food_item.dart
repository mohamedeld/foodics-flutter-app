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
                      foods[widget.foodIndex].imgUrl,
                      height: constraints.maxHeight * 0.55,
                      errorBuilder: (context, error, stackTrace) => Icon(
                        Icons.broken_image,
                        size: constraints.maxHeight * 0.55,
                        color: Colors.grey,
                      ),
                    ),
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
                      width: constraints.maxWidth * 0.2,
                      height: constraints.maxHeight * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
              SizedBox(height: constraints.maxHeight * 0.05),
              SizedBox(
                height: constraints.maxHeight * 0.2,
                child: FittedBox(
                  child: Text(
                    foods[widget.foodIndex].name,
                    style: TextStyle(
                      fontSize: textScale.scale(20),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
              Text(
                '\$${foods[widget.foodIndex].price}',
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

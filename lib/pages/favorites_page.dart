import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/product_item_model.dart';
import 'package:fooddeliveryapp/widgets/favorite_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    final favoriteFoods = foods.where((item) => item.isFavorite).toList();
    if (favoriteFoods.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/empty_state.png",
              height: 350,
              fit: BoxFit.cover,
            ),
            Text(
              "No favorite item found!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: favoriteFoods.length,
      // ✅ Pass the food object, not the index
      itemBuilder: (context, index) => FavoriteItem(
        food: favoriteFoods[index],
        onUnfavorite: () => setState(() {}), // ✅ Triggers parent rebuild
      ),
    );
  }
}

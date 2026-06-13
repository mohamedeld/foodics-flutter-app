import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widgets/account_order.dart';
import 'package:fooddeliveryapp/widgets/item_tapped.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/profile.jpeg"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Mohamed Elrfaay",
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AccountOrder(value: 50, label: "Orders"),
              AccountOrder(value: 45, label: "Vouchers"),
            ],
          ),
          SizedBox(height: 16),
          ItemTapped(
            title: "Past orders",
            leadingIcon: Icons.shopping_cart,
            subTitle: 'Here you find your past orders',
          ),
          Divider(thickness: 2, indent: 20, endIndent: 20),
          ItemTapped(
            title: "Available Vouchers",
            leadingIcon: Icons.card_giftcard,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widgets/account_order.dart';
import 'package:fooddeliveryapp/widgets/item_tapped.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            if (!isLandScape) ...[
              Container(
                height: isLandScape ? size.height * 0.45 : size.height * 0.25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile.jpeg"),
                    fit: isLandScape ? BoxFit.contain : BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Mohamed Elrfaay",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AccountOrder(value: 50, label: "Orders"),
                  AccountOrder(value: 45, label: "Vouchers"),
                ],
              ),
            ],
            if (isLandScape) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.45,
                        width: size.width * 0.45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile.jpeg"),
                            fit: isLandScape ? BoxFit.contain : BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Mohamed Elrfaay",
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AccountOrder(value: 50, label: "Orders"),
                      SizedBox(width: 24),
                      AccountOrder(value: 45, label: "Vouchers"),
                    ],
                  ),
                ],
              ),
            ],

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
      ),
    );
  }
}

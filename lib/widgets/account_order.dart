import 'package:flutter/material.dart';

class AccountOrder extends StatelessWidget {
  final int value;
  final String label;
  const AccountOrder({super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${value}",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text("${label}", style: TextStyle(fontSize: 18)),
      ],
    );
  }
}

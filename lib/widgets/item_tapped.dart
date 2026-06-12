import 'package:flutter/material.dart';

class ItemTapped extends StatelessWidget {
  final String title;
  final String? subTitle;
  final IconData leadingIcon;
  const ItemTapped({
    super.key,
    required this.title,
    this.subTitle,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("$title"),
      leading: Icon(
        leadingIcon,
        size: 30,
        color: Theme.of(context).primaryColor,
      ),
      subtitle: subTitle != null ? Text("$subTitle") : null,
      trailing: Icon(
        Icons.chevron_right,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

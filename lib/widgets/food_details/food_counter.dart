import 'package:flutter/material.dart';

class FoodCounter extends StatefulWidget {
  const FoodCounter({super.key});

  @override
  State<FoodCounter> createState() => _FoodCounterState();
}

class _FoodCounterState extends State<FoodCounter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  counter--;
                }
              });
            },
            icon: Icon(Icons.remove),
          ),
          Text("${counter}", style: TextStyle(fontSize: 18)),
          IconButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

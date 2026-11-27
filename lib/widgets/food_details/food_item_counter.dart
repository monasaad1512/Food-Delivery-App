import 'package:flutter/material.dart';

class FoodItemCounter extends StatefulWidget {
  const FoodItemCounter({super.key});

  @override
  State<FoodItemCounter> createState() => _FoodItemCounterState();
}

class _FoodItemCounterState extends State<FoodItemCounter> {
  int counter = 1;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter > 1) {
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            IconButton(
              onPressed: () => decrementCounter(),
              icon: Icon(
                Icons.remove,
                size: 30,
                fontWeight: FontWeight.w800,
                color: counter > 1 ? null : Colors.grey,
              ),
            ),
            const SizedBox(width: 16),
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 16),
            IconButton(
              onPressed: () => incrementCounter(),
              icon: Icon(Icons.add, size: 27, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}

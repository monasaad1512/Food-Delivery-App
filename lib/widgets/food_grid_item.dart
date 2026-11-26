import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_delivery.dart';
import 'package:food_delivery/widgets/favourite_button.dart';

class FoodGridItem extends StatelessWidget {
  final int foodIndex;
  const FoodGridItem({super.key, required this.foodIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.network(
                  foodDeliveryList[foodIndex].imageUrl,
                  height: constraints.maxHeight * 0.55,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: FavouriteButton(foodIndex: foodIndex, width: 40, height: 40,)
                ),
              ],
            ),

            SizedBox(height: constraints.maxHeight * 0.05),
            Text(
              foodDeliveryList[foodIndex].name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: constraints.maxHeight * 0.02),

            Text(
              '\$ ${foodDeliveryList[foodIndex].price}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

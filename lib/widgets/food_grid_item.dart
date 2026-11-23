import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_delivery.dart';

class FoodGridItem extends StatefulWidget {
  final int foodIndex;
  const FoodGridItem({super.key, required this.foodIndex});

  @override
  State<FoodGridItem> createState() => _FoodGridItemState();
}

class _FoodGridItemState extends State<FoodGridItem> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                  foodDeliveryList[widget.foodIndex].imageUrl,
                  height: constraints.maxHeight * 0.55,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () => setState(() {
                        foodDeliveryList[widget.foodIndex] =
                            foodDeliveryList[widget.foodIndex].copyWith(
                              isFavourite: !foodDeliveryList[widget.foodIndex]
                                  .isFavourite,
                            );
                      }),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                        child: Icon(
                          foodDeliveryList[widget.foodIndex].isFavourite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: constraints.maxHeight * 0.05),
            Text(
              foodDeliveryList[widget.foodIndex].name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: constraints.maxHeight * 0.02),

            Text(
              '\$ ${foodDeliveryList[widget.foodIndex].price}',
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

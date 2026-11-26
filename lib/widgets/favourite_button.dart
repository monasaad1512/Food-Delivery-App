import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_delivery.dart';
import 'package:food_delivery/widgets/custome_secondary_button.dart';

class FavouriteButton extends StatefulWidget {
  final int foodIndex;
  final double width;
  final double height;
  const FavouriteButton({super.key, required this.foodIndex, required this.width, required this.height});

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  @override
  Widget build(BuildContext context) {
    return CustomeSecondaryButton(
      width: widget.width,
      height: widget.height,
      onTap: () => setState(() {
        foodDeliveryList[widget.foodIndex] = foodDeliveryList[widget.foodIndex]
            .copyWith(
              isFavourite: !foodDeliveryList[widget.foodIndex].isFavourite,
            );
      }),
      iconData: foodDeliveryList[widget.foodIndex].isFavourite
          ? Icons.favorite
          : Icons.favorite_border,
    );
  }
}

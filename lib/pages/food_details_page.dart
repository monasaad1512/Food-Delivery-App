import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_delivery.dart';
import 'package:food_delivery/widgets/food_details/property_item.dart';
import 'package:food_delivery/widgets/food_details/top_banner.dart';

class FoodDetailsPage extends StatelessWidget {
  final FoodDelivery foodItem;
  const FoodDetailsPage({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBanner(foodItem: foodItem),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16, bottom: 46),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
        
                children: [
                  Text(
                    foodItem.name,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Buffalo Burger',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge!.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 32),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PropertyItem(
                          propertyName: 'Size',
                          propertyValue: 'Medium',
                        ),
                        VerticalDivider(indent: 0, endIndent: 0),
                        PropertyItem(
                          propertyName: 'Calories',
                          propertyValue: '150 Cal',
                        ),
                        VerticalDivider(indent: 0, endIndent: 0),
        
                        PropertyItem(
                          propertyName: 'Cooking',
                          propertyValue: '10 - 20 Min',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Text('Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome ',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.grey
                  ),
                  ),
                  const SizedBox(height: 32,),
                  Row(
                    children: [
                      Text('\$ ${foodItem.price}',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600
                      ),),
                      const SizedBox(width: 46,),
                      Expanded(
                        child: SizedBox(
                          height: size.height * 0.058,
                          child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor
                          ),child: Text('Checkout',style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),))),
                      )
                    ],
                  )
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

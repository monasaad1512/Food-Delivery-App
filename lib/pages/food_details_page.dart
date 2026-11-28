import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_delivery.dart';
import 'package:food_delivery/ui_models/food_details_args.dart';
import 'package:food_delivery/widgets/custome_back_button.dart';
import 'package:food_delivery/widgets/favourite_button.dart';
import 'package:food_delivery/widgets/food_details/food_item_counter.dart';
import 'package:food_delivery/widgets/food_details/property_item.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({super.key});

  static const String routeName = '/food-details';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final FoodDetailsArgs foodArgs =
        ModalRoute.of(context)!.settings.arguments as FoodDetailsArgs;
    final int foodIndex = foodArgs.foodIndex;
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: size.height * 0.35,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.network(
                              foodDeliveryList[foodIndex].imageUrl,
                              fit: BoxFit.contain,
                              height: size.height * 0.28,
                            ),
                          ),
                        ),
                      ),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomeBackButton(
                        width: size.width * 0.09,
                        height: size.height * 0.04,
                      ),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FavouriteButton(
                          foodIndex: foodIndex,
                          width: size.width * 0.09,
                          height: size.height * 0.04,
                        ),
                      ),
                    ],
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16,
                      top: 16,
                      bottom: 46,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate([
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  foodDeliveryList[foodIndex].name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'Buffalo Burger',
                                  style: Theme.of(context).textTheme.bodyLarge!
                                      .copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                            FoodItemCounter(),
                          ],
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
                        const SizedBox(height: 16),
                        Text(
                          'Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome Loream Ipsome ',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Row(
                children: [
                  Text(
                    '\$ ${foodDeliveryList[foodIndex].price}',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 46),
                  Expanded(
                    child: SizedBox(
                      height: size.height * 0.058,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        child: Text(
                          'Checkout',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

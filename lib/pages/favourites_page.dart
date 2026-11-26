import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_delivery.dart';
import 'package:food_delivery/pages/food_details_page.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
      final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final fvouriteFood = foodDeliveryList
        .where((foodItem) => foodItem.isFavourite == true)
        .toList();

    if (fvouriteFood.isEmpty) {
      return Column(
        children: [
          Image.asset('assets/images/empty_state.png',height: isLandscape ? size.height * 0.5 : size.height * 0.3,),
          Text('No Favourite Food Items', style: TextStyle(fontSize: 22)),
        ],
      );
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: fvouriteFood.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
             Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FoodDetailsPage(foodItem: fvouriteFood[index],)),
                  );
          },
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.network(
                    fvouriteFood[index].imageUrl,
                    height: isLandscape ? size.height * 0.2 : size.height * 0.1,
                    width: size.width * 0.2,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fvouriteFood[index].name,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '\$ ${fvouriteFood[index].price}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      final targetItem = fvouriteFood[index];
                      int targetIndex = foodDeliveryList.indexOf(targetItem);
                      setState(() {
                        foodDeliveryList[targetIndex] =
                            foodDeliveryList[targetIndex].copyWith(
                              isFavourite: false,
                            );
                        fvouriteFood.remove(targetItem);
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Theme.of(context).primaryColor,
                      size: size.height * 0.035,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

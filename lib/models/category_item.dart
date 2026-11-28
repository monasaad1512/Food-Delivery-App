import 'package:food_delivery/utilities/app_assets.dart';

class CategoryItem {
  final String id;
  final String title;
  final String imagePath;

  CategoryItem({
    required this.id,
    required this.title,
    required this.imagePath,
  });
}

List<CategoryItem> categories = [
  CategoryItem(id: '1', title: 'Burger', imagePath: AppAssets.burgerIcon),
  CategoryItem(id: '2', title: 'Pizza', imagePath: AppAssets.pizzaIcon),
  CategoryItem(id: '3', title: 'Pasta', imagePath: AppAssets.pastaIcon),
];

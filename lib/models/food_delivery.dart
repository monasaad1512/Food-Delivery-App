class FoodDelivery {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final bool isFavourite;
  final String categoryId;

  const FoodDelivery({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.categoryId,
    this.isFavourite = false,
  });

  FoodDelivery copyWith({
    String? id,
    String? name,
    String? imageUrl,
    double? price,
    bool? isFavourite,
    String? categoryId,
  }) {
    return FoodDelivery(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      isFavourite: isFavourite ?? this.isFavourite,
      categoryId: categoryId ?? this.categoryId,
    );
  }
}

List<FoodDelivery> foodDeliveryList = [
  FoodDelivery(
    name: 'Cheese Burger',
    imageUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 5.99,
    categoryId: '1', id: 'Burger 1',
  ),
  FoodDelivery(
    name: 'Beaf Burger',
    imageUrl:
        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 14.99,
    categoryId: '1', id: 'Burger 2',
  ),
  FoodDelivery(
    name: 'Chicken Burger',
    imageUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.99,
    categoryId: '1', id: 'Burger 3',
  ),
  FoodDelivery(
    name: 'Pasta',
    imageUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 9.99,
    categoryId: '3', id: 'Pasta 1',
  ),
  FoodDelivery(
    name: 'Chicken Pizza',
    imageUrl:
        'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 12.99,
    categoryId: '2', id: 'Pizza 1',
  ),
];

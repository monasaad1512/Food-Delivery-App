class FoodDelivery {
  final String name;
  final String imageUrl;
  final double price;
  final bool isFavourite;

  FoodDelivery({required this.name, required this.imageUrl, required this.price,this.isFavourite = false});

  FoodDelivery copyWith(
    {
      String? name,
      String? imageUrl,
      double? price,
      bool? isFavourite,
    }
  )
  {
    return FoodDelivery(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }
}

List<FoodDelivery> foodDeliveryList = [
 
  FoodDelivery(
    name: 'Cheese Burger',
    imageUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 5.99,
  ), 
   FoodDelivery(
    name: 'Beaf Burger',
    imageUrl: 'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 14.99,
  ),
  FoodDelivery(
    name: 'Chicken Burger',
    imageUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.99,
  ),
 FoodDelivery(
    name: 'Pasta',
    imageUrl: 'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 9.99,
  ),
  FoodDelivery(
    name: 'Chicken Pizza',
    imageUrl: 'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 12.99,
  ),
];
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/bottom_navbar_page.dart';
import 'package:food_delivery/pages/food_details_page.dart';

void main() {
  // لو عايزين نلغى وضع معين
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodak - Food Delivery',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[100],
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        dividerTheme: DividerThemeData(thickness: 2, indent: 20, endIndent: 20),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
        ).copyWith(primary: Colors.deepOrange),
      ),
      // Named Routes
      routes: {
        '/': (context) => const BottomNavbarPage(),
        FoodDetailsPage.routeName : (context) => const FoodDetailsPage()
      },
    );
  }
}

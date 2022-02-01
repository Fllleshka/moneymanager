import 'package:flutter/material.dart';
import 'package:moneymanager/pages/MainScreen.dart';
import 'package:moneymanager/pages/LocationShop.dart';
import 'package:moneymanager/pages/ShopScreen.dart';
import 'package:moneymanager/pages/RentalScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/location_shop': (context) => const LocationScreen(),
        '/shop': (context) => const ShopScreen(),
        '/rental': (context) => const RentalScreen(),
      },
    );
  }
}